# SnoopDoc

Verifies your green pass QR code and plays a sound file.

## Dependencies

* fswebcam
* mpg123
* https://github.com/hannob/vacdec

## Limitations

* The signature of the green passes is currently not checked.
* The expiry of green passes is not checked. Everything that can successfully be decoded, is treated as valid.