#!/bin/sh

# execute with watch -n 1
# watch -n 1 ./snoopdoc.sh ./sound-to-play.mp3

IMGPATH=/tmp/out.jpg
SOUNDPATH=$1

fswebcam --no-banner -r 1920x1080 $IMGPATH

if /app/vacdec/vacdec $IMGPATH; then
	mpg123 $SOUNDPATH
fi
