#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "appointment": {
      "date_on": "11/1/17",
      "location": "Boston,MA Tuft Hospital 7th Floor Rm705",
      "doctor_id": 1,
      "patient_id": 1
    }
  }'

echo
