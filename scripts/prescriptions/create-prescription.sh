#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/prescriptions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "prescription": {
      "pharmacy_location": "Quincy, MA",
      "usage_direction": "2 times per day, 1 pill per time",
      "duration": "30 days",
      "patient_id": 1,
      "drug_id": 1
    }
  }'

echo
