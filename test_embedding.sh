#!/bin/bash

source .env

EMBEDDING_MODEL="together_ai/togethercomputer/m2-bert-80M-32k-retrieval"

curl --location 'http://0.0.0.0:4000/embeddings' \
    --header "Authorization: Bearer $LITELLM_MASTER_KEY" \
    --header 'Content-Type: application/json' \
    --data '{
        "model": "'$EMBEDDING_MODEL'",
        "input": ["The rain in spain falls mainly on the plain"]
    }'