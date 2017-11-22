FROM alpine

MAINTAINER HQM <nur.hakim.arif@gmail.com>

ADD ./requirements.txt /opt/requirements.txt

RUN apk update
RUN apk --no-cache --virtual add gcc openssh py-pip python-dev build-base libffi-dev openssh-client  freetype freetype-dev libpng  libpng-dev  postgresql-dev jpeg jpeg-dev libjpeg libjpeg-turbo libjpeg-turbo-dev zlib zlib-dev  libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc  curl jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev py-pillow  build-base linux-headers lapack lapack-dev gfortran
ENV LIBRARY_PATH=/lib:/usr/lib  

RUN pip install numpy  Pillow scipy
RUN pip install --no-cache-dir -r /opt/requirements.txt


CMD ["python"]
