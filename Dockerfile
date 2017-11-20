FROM python:2.7-alpine

MAINTAINER HQM <nur.hakim.arif@gmail.com>

ADD ./requirements.txt /opt/requirements.txt

RUN apk update  && \
    apk --no-cache --virtual add gcc openssh py-pip build-base libffi-dev openssh-client openssl-dev freetype freetype-dev libpng  libpng-dev openssl-dev postgresql-dev

RUN pip install --no-cache-dir numpy Pillow==3.2.0
RUN pip install --no-cache-dir -r /opt/requirements.txt


CMD ["python"]
