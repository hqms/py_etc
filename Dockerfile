FROM docker:latest

MAINTAINER HQM <nur.hakim.arif@gmail.com>

ADD ./requirements.txt /opt/requirements.txt

RUN apk add --no-cache ca-certificates

RUN apk update  && \
    apk  --no-cache --virtual add gcc openssh python python-dev py-pip postgresql-dev build-base libffi-dev openssh-client libjpeg zlib  jpeg jpeg-dev

RUN pip install --no-cache-dir -r /opt/requirements.txt


CMD ["python"]
