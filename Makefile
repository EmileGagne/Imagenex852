CC=g++
FLAGS=-Wall -O3 -std=c++11

default: dump852 octave-dumper
	echo "Building all"

dump852: prepare
	$(CC) $(FLAGS) -o build/bin/dump852 src/dump852.cpp

octave-dumper: prepare
	$(CC) $(FLAGS) -o build/bin/octave-dumper src/octave-dumper.cpp

clean:
	rm -rf build

prepare: clean
	mkdir -p build || true
	mkdir -p build/bin || true

