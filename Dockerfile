
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "--workers=2", "--bind", "0.0.0.0:8080", "--chdir=/app",  "main:APP" ]