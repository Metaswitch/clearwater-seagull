# Makefile for clearwater-seagull package

# This should come first so make does the right thing by default
all: build

DEB_COMPONENT := clearwater-seagull
DEB_MAJOR_VERSION := 1.8.3${DEB_VERSION_QUALIFIER}
DEB_NAMES := clearwater-seagull
DEB_ARCH := all

include build-infra/cw-deb.mk

build:
	cd seagull/trunk/src/ && ./build.ksh

deb: build deb-only

clean:

.PHONY: all build deb-only deb clean
