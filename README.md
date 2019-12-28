# mlflow_image

To run locally:
1. `git clone https://github.com/La1c/mlflow_image.git .`
2. `docker build -t mlflow_image:1.0 .` 
3. `docker run -p 5000:5000 mlflow_image:1.0`

You also can add
1. `-e DEFAULT_ARTIFACT_ROOT s3://something` to set up s3 as a default artifact storage.
2. `-e DEFAULT_HOST https://myserver.com` to set up default host
3. `-e AWS_ACCESS_KEY_ID ABCD` and `-e AWS_SECRET_ACCESS_KEY EFGH` to pass your aws credentials
