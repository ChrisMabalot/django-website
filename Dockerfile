FROM python:3.10

ENV PYTHONUNBUFFERED = 1
WORKDIR /app/

COPY Requirements/production.txt ./Requirements/production.txt
RUN pip install -r ./Requirements/production.txt

