FROM python:3.9.7
COPY . /app
RUN pip install base45 cbor2 pillow pyzbar
RUN apt-get -y update
RUN apt-get -y install fswebcam mpg123 zbar-tools pulseaudio
ENTRYPOINT ["/app/run.sh"]
