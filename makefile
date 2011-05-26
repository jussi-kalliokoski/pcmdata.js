MINIFY := yui-compressor

all:
	mkdir lib -p
	cat js/binarystream.js js/pcmdata.js > lib/pcmdata.js
	${MINIFY} lib/pcmdata.js -o lib/pcmdata.min.js
