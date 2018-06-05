FROM python:3

ENV PYTHONUNBUFFERED 1
RUN mkdir /dockeando
WORKDIR /dockeando
ADD requirements.txt /dockeando/
RUN pip install -r requirements.txt
ADD . /dockeando/