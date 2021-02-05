###############################
# Configure Python application
###############################
FROM python:Python 3.8.5

WORKDIR / app

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

COPY requirements.txt /app/requirements.txt

RUN pip install --quiet -r /app/requirements.txt

COPY . /app

