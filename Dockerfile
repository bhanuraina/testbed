FROM python:3

COPY requirements.txt ./

RUN apt update  && apt upgrade -y

RUN apt install -y openjdk-17-jdk


RUN pip install --no-cache-dir -r requirements.txt




