#!/bin/bash

source .env

MODEL="together_ai/meta-llama/Meta-Llama-3.1-8B-Instruct-Turbo"
# MODEL="gpt-4o-mini"

curl --location 'http://0.0.0.0:4000/chat/completions' \
    --header 'Content-Type: application/json' \
    --header "Authorization: Bearer $LITELLM_MASTER_KEY" \
    --data "{
        \"model\": \"$MODEL\",
        \"messages\": [
        {
            \"role\": \"user\",
            \"content\": \"tell me a joke about AI\"
        }
        ]
    }"
