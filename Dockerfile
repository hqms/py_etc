FROM docker:latest

MAINTAINER HQM <nur.hakim.arif@gmail.com>

ADD ./requirements.txt /opt/requirements.txt

RUN apk add --no-cache ca-certificates

RUN apk update  && \
    apk  --no-cache --virtual add gcc openssh python3 python3-dev postgresql-dev build-base libffi-dev openssh-client libjpeg zlib  zlib-dev jpeg jpeg-dev
    
RUN pip3 install --no-cache-dir -r /opt/requirements.txt


CMD ["python"]
