#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
