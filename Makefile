.PHONY: release install

PREFIX?=/usr/local

release:
	swift build -c release

install: release
	cp .build/release/sourcekite $(PREFIX)/bin/
