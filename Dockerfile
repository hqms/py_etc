FROM docker:latest

MAINTAINER HQM <nur.hakim.arif@gmail.com>

ADD ./requirements.txt /opt/requirements.txt

RUN apk add --no-cache ca-certificates

RUN apk update  && \
    apk --no-cache --virtual  gcc openssh python py-pip build-base libffi-dev openssh-client openssl-dev

RUN pip install --no-cache-dir -r /opt/requirements.txt


CMD ["python"]
