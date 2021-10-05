# SnoopDoc

Verifies your green pass QR code and plays a sound file.

## Dependencies

* fswebcam
* mpg123
* zbar-tools
* https://github.com/hannob/vacdec

## Limitations

* The signature of the green passes is currently not checked.
* The expiry of green passes is not checked. Everything that can successfully be decoded, is treated as valid.

## Usage

To take a photo and check it:

`./snoopdoc.sh ./sound-to-play.mp3`

To execute every 0.1 second and basically monitors the webcam:

`watch -n 0.1 ./snoopdoc.sh ../sound-to-play.mp3`

Docker usage:

```
docker build -t snoopdoc .
docker run --device=/dev/video0 --device=/dev/snd snoopdoc
```
