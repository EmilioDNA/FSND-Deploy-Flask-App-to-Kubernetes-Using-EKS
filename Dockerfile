
FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "--workers=2", "-b", ":8080", "--workers=2",  "main:APP" ]