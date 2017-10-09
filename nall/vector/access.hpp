#pragma once

namespace nall {

template<typename T> auto vector<T>::operator[](uint offset) -> T& {
  return _pool[offset];
}

template<typename T> auto vector<T>::operator[](uint offset) const -> const T& {
  return _pool[offset];
}

template<typename T> auto vector<T>::operator()(uint offset) -> T& {
  while(offset >= size()) append(T());
  return _pool[offset];
}

template<typename T> auto vector<T>::operator()(uint offset, const T& value) const -> const T& {
  if(offset >= size()) return value;
  return _pool[offset];
}

template<typename T> auto vector<T>::left() -> T& {
  return _pool[0];
}

template<typename T> auto vector<T>::left() const -> const T& {
  return _pool[0];
}

template<typename T> auto vector<T>::right() -> T& {
  return _pool[_size - 1];
}

template<typename T> auto vector<T>::right() const -> const T& {
  return _pool[_size - 1];
}

}
