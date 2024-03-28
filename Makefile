MAKEFLAGS += --always-make

all: build

build-clean:
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info

build-mirror:
	python3 setup-mirror.py check sdist bdist_wheel --universal

build: build-clean build-mirror 
	python3 setup-build.py check sdist bdist_wheel --universal
