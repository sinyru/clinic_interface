# What is this???
An API used to record patients medical history!

## Routes
```
resources :examples, except: [:new, :edit]
post '/sign-up' => 'users#signup'
post '/sign-in' => 'users#signin'
delete '/sign-out/:id' => 'users#signout'
patch '/change-password/:id' => 'users#changepw'
resources :users, only: [:index, :show]
resources :patients, except: [:new, :edit]
resources :doctors, except: [:new, :edit]
resources :appointments, except: [:new, :edit]
resources :drugs, except: [:new, :edit]
resources :prescriptions, except: [:new, :edit]
```

## Patients CRUD actions
GET
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```
CREATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "patient": {
      "first_name": "Wei",
      "last_name": "Liu",
      "height": 178,
      "weight": 180,
      "phone": 8573830565
    }
  }'
```
SHOW
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```
UPDATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "patient": {
      "height": 168
    }
  }'
```
DELETE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/patients/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

## Doctors CRUD actions
GET
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
CREATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "doctor": {
      "first_name": "Tonii",
      "last_name": "Luongo",
      "specialty": "Urinal",
      "phone": 1234567900,
      "location": "Boston, MA"
    }
  }'
```
SHOW
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
UPDATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "doctor": {
      "specialty": "Prostate"
    }
  }'
```
DELETE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/doctors/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

```

## Appointments CRUD actions
GET
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
CREATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "appointment": {
      "date_on": "11/1/17 10am",
      "location": "Boston,MA Tuft Hospital 7th Floor Rm705",
      "doctor_id": 1,
      "patient_id": 1
    }
  }'
```
SHOW
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
UPDATE
```
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
```
DELETE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appointments/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

```

## Drugs CRUD actions
GET
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/drugs"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
CREATE
```
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
```
SHOW
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/drugs/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
UPDATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/drugs/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "drug": {
      "description": "For seasonal allergies such as polon"
    }
  }'
```
DELETE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/drugs/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

```

## Prescriptions CRUD actions
GET
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/prescriptions"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
CREATE
```
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
      "drug_id": 1,
      "doctor_id": 1
    }
  }'
```
SHOW
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/prescriptions/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

```
UPDATE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/prescriptions/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "prescription": {
      "duration": "2 Weeks"
    }
  }'

```
DELETE
```
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/prescriptions/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

```
