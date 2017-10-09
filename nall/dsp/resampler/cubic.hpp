#pragma once

#include <nall/queue.hpp>

namespace nall { namespace DSP { namespace Resampler {

struct Cubic {
  inline auto reset(double inputFrequency, double outputFrequency, uint queueSize = 0) -> void;
  inline auto pending() const -> bool { return samples.pending(); }
  inline auto read() -> double { return samples.read(); }
  inline auto write(double sample) -> void;

private:
  double inputFrequency;
  double outputFrequency;

  double ratio;
  double fraction;
  double history[4];
  queue<double> samples;
};

auto Cubic::reset(double inputFrequency, double outputFrequency, uint queueSize) -> void {
  this->inputFrequency = inputFrequency;
  this->outputFrequency = outputFrequency;
  if(!queueSize) queueSize = outputFrequency * 0.02;  //20ms

  ratio = inputFrequency / outputFrequency;
  fraction = 0.0;
  for(auto& sample: history) sample = 0.0;
  samples.resize(queueSize);
}

auto Cubic::write(double sample) -> void {
  auto& mu = fraction;
  auto& s = history;

  s[0] = s[1];
  s[1] = s[2];
  s[2] = s[3];
  s[3] = sample;

  while(mu <= 1.0) {
    double A = s[3] - s[2] - s[0] + s[1];
    double B = s[0] - s[1] - A;
    double C = s[2] - s[0];
    double D = s[1];

    samples.write(A * mu * mu * mu + B * mu * mu + C * mu + D);
    mu += ratio;
  }

  mu -= 1.0;
}

}}}
