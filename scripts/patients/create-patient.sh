#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "patient": {
      "first_name": "Zhu",
      "last_name": "Chen",
      "height": 178,
      "weight": 180,
      "phone": 8579121111,
      "age": 28
    }
  }'

echo
