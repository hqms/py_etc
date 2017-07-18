FROM python:2.7-alpine


ADD ./requirements.txt /opt/requirements.txt


RUN apk update  && \
    apk --no-cache --virtual add py-pip

RUN pip install -r /opt/requirements.txt


CMD ["python"]