FROM alpine:latest
MAINTAINER HQM <hakim@detik.com>

ENV FFMPEG_VERSION  1.1

RUN apk add --update build-base curl nasm tar bzip2 \
  zlib-dev openssl yasm-dev lame-dev libogg-dev x264-dev libvpx-dev libvorbis-dev x265-dev freetype-dev libass-dev libwebp-dev rtmpdump-dev libtheora-dev opus-dev alpine-sdk 


RUN	wget https://github.com/FFmpeg/FFmpeg/archive/release/${FFMPEG_VERSION}.zip -P /tmp/ 

RUN	cd /tmp/ && unzip ./${FFMPEG_VERSION}.zip


RUN cd /tmp/FFmpeg-release-${FFMPEG_VERSION}/ &&  \ 
	./configure  --enable-shared --enable-pthreads --enable-gpl --enable-version3 --enable-hardcoded-tables --enable-avresample --cc=clang --host-cflags= --host-ldflags= --enable-libx264 --enable-libmp3lame --enable-libxvid   --enable-libfreetype --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libfaac --enable-libspeex --enable-libschroedinger --enable-libfdk-aac --enable-libopus --enable-frei0r --enable-libcaca --enable-libsoxr --enable-cross-compile --enable-libopenjpeg --disable-decoder=jpeg2000 --enable-nonfree --enable-vda
