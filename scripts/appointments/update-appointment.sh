#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "appointment": {
      "comment": "The patient is cured from Prostate Surgery"
    }
  }'

echo
