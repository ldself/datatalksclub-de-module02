#!/bin/bash

# https://kestra.io/docs/how-to-guides/google-credentials

ENV_FILENAME=.env_encoded

while IFS='=' read -r key value; do
  echo "SECRET_$key=$(echo -n "$value" | base64)";
done < .env > $ENV_FILENAME

## Encodes the service account file without line wrapping to make sure the whole JSON value is intact.
echo "SECRET_GCP_SERVICE_ACCOUNT=$(cat service-account.json | base64 -w 0)" >> $ENV_FILENAME


## execute using `bash encode_env.sh`

#### in docker_compose file
## env_file:
##   - .env_encoded


#### in kestra yml file
## {{ secret('KEY_ID') }}