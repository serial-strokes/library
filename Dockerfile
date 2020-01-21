# https://hub.docker.com/_/busybox/
FROM busybox:1.31.1

RUN mkdir -p /opt/library/tracks/
COPY tracks/*.mp3 /opt/library/tracks/
RUN chmod 0444 /opt/library/tracks/*.mp3

VOLUME ["/opt/library"]
