FROM python:3.7.0

EXPOSE 5000

RUN pip install mlflow

RUN mkdir /mlflow/

CMD mlflow server \
    --backend-store-uri /mlflow \
    --host 0.0.0.0