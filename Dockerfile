FROM python:3
RUN  apt-get install git
ENV PYTHONUNBUFFERED 1
RUN mkdir /dockeando
WORKDIR /dockeando
ADD requirements.txt /dockeando/
RUN pip install -r requirements.txt
ADD . /dockeando/