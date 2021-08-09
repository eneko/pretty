.PHONY: build install

build:
	swift build -c release --disable-sandbox

install: build
	install .build/release/pretty /usr/local/bin/
