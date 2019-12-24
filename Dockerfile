FROM python:3.7.0

EXPOSE 5000

RUN pip install mlflow

RUN mkdir /mlflow/

ENV DEFAULT_ARTIFACT_ROOT ./mlruns
ENV DEFAULT_HOST 0.0.0.0

CMD mlflow server \
    --backend-store-uri /mlflow \
    --default-artifact-root $DEFAULT_ARTIFACT_ROOT \ 
    --host $DEFAULT_HOST