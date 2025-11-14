.PHONY: all clean run

ADA_INCLUDES = -Isrc/ada/ui/ -Isrc/ada/validation/

all: build

build:
	mkdir -p bin
	gnatmake $(ADA_INCLUDES) -g -O2 -o bin/main src/ada/core/main.adb

clean:
	rm -rf bin/ obj/ *.o *.ali

run: build
	./bin/main
