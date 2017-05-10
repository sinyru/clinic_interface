#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "doctor": {
      "first_name": "Tony",
      "last_name": "Luongo",
      "specialty": "Urinal",
      "phone": 1234567900,
      "location": "Boston, MA"
    }
  }'

echo
