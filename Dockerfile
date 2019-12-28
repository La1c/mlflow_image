FROM python:3.7.0

EXPOSE 5000

RUN pip install mlflow boto3

RUN mkdir /mlflow/

ENV DEFAULT_ARTIFACT_ROOT ./mlruns
ENV DEFAULT_HOST 0.0.0.0
ENV AWS_ACCESS_KEY_ID some_acsess_key_id
ENV AWS_SECRET_ACCESS_KEY some_secret_access_key

CMD mlflow server \
    --backend-store-uri /mlflow \
    --default-artifact-root $DEFAULT_ARTIFACT_ROOT \ 
    --host $DEFAULT_HOST