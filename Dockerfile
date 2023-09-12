FROM python:alpine3.18

WORKDIR /app

COPY ./flask-app /app

RUN pip install -r requirements.txt

RUN apk update && apk add iputils

EXPOSE 5000

ENV USER_NAME=""
ENV USER_PWD=""
ENV DB_URL=""


CMD ["python3", "run.py"]
