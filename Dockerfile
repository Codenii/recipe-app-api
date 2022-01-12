FROM python:3.7-alpine3.15

ENV PYTHONUNBUFFERED 1

RUN python -m pip install --upgrade pip
COPY ./requirements.txt /requirements.txt 
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
