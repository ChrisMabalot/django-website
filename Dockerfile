FROM python:3.10 as production

ENV PYTHONUNBUFFERED = 1
WORKDIR /app/

COPY Requirements/production.txt ./Requirements/production.txt
RUN pip install -r ./Requirements/production.txt

COPY manage.py ./manage.py
COPY setup.cfg ./setup.cfg
COPY portfolio ./portfolio

EXPOSE 8000

FROM production as development

COPY Requirements/development.txt ./Requirements/development.txt
RUN pip install -r ./Requirements/development.txt

COPY . . 