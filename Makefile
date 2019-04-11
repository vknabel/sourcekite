.PHONY: release install

LIB_DIR?=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib
PREFIX?=/usr/local

release:
	swift build -Xswiftc -framework -Xswiftc sourcekitd -Xswiftc -F -Xswiftc $(LIB_DIR) -Xlinker -rpath -Xlinker $(LIB_DIR) -c release

install: release
	cp .build/release/sourcekite $(PREFIX)/bin/
