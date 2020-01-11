FROM python:3.7.5-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]