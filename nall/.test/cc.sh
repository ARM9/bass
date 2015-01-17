#debugging
#g++ -std=c++11 -Wzero-as-null-pointer-constant -g -o test test.cpp -I../.. -lX11 -pthread

#optimizing
g++ -std=c++11 -Wzero-as-null-pointer-constant -Wreturn-type -march=native -O3 -fomit-frame-pointer -s -o test test.cpp -I../.. -lX11 -pthread

#profiling
#g++ -std=c++11 -O3 -pg -o test test.cpp -I../../ -lX11 -pthread
