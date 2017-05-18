#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/drugs"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "drug": {
      "name": "Zyntec",
      "description": "For polon allergies"
    }
  }'

echo
