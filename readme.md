# pcmdata.js

Uses binary.js and stream.js to read / write wav files ~~quickly~~.

## WARNING

This library is deprecated. Synchronous string-based decoding is not a good idea, there are better options available nowadays. Take a look at [aurora.js](https://github.com/ofmlabs/aurora.js).

For encoding, see [Recorderjs](https://github.com/mattdiamond/Recorderjs).

## Usage

```javascript

// Read file contents into a pcm object:

var	pcm		= PCMData.decode(waveData);

// Write a wav file (also explains the pcm object)
var	waveData	= PCMData.encode({
	sampleRate:	44100,
	channelCount:	2,
	bytesPerSample:	1,
	data:		buffer, /* A (typed) array containing the PCM data */
	chunks:		{
		 // Place the extra chunks here.
		'tag ':	'something',
		'extb': 'more of something'
	}
});

```

## License

BSD License
