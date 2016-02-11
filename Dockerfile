FROM python:2.7.8-slim

COPY ./ /src
WORKDIR /src

RUN pip install -r requirements.pypm

RUN nosetests

EXPOSE 8080

CMD ["python", "app.py"]
