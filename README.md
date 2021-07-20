# express-backend
This is express-backend, code reference from https://github.com/hagopj13/node-express-boilerplate

## Quick start

```
cp .env_backup .env
docker pull mysql:5.7
docker pull node:latest
docker build -t john/express-backend .
docker-compose up -d
```
server will run at 3000 port

## Structure
```
src
├── config
│   ├── config.js
│   ├── logger.js
│   ├── morgan.js
│   ├── passport.js
│   ├── roles.js
│   └── tokens.js
├── controllers
│   ├── auth.controller.js
│   ├── consultation.controller.js
│   └── index.js
├── middlewares
│   ├── auth.js
│   ├── db.js
│   ├── error.js
│   ├── rateLimiter.js
│   └── validate.js
├── routes
│   └── v1
│       ├── auth.route.js
│       ├── consultation.route.js
│       ├── index.js
│       └── users.js
├── services
│   ├── auth.service.js
│   ├── consultation.service.js
│   ├── index.js
│   ├── token.service.js
│   └── user.service.js
├── utils
│   ├── ApiError.js
│   ├── catchAsync.js
│   ├── generateRandomString.js
│   └── pick.js
└── validations
    ├── auth.validation.js
    ├── consultation.validation.js
    └── index.js
```

## API Document

#### POST localhost:3000/auth/v1/register

```
curl --request POST -H "Content-Type: application/json" --data "{\"email\":\"testg@gmails.com\",\"password\":\"test1234\",\"phone\":\"53535453\",\"address\":\"asdfasdfsfdsfa\"}" localhost:3000/auth/v1/register
```

| body name | type | example value |
| --- | --- | ---|
| email | string | test@test{random}.com |
| phone | string | 53866464|
| password | string | password|
|address| string| room 13A, happy town |

Respond example
```JSON
{
    "resp": {
        "clinicId": 28
    },
    "message": "create clinic succeed."
}
```

Error example

```JSON
{
    "code": 400,
    "message": "Email already taken"
}
```
--

#### POST localhost:3000/auth/v1/login
```
curl --request POST -H "Content-Type: application/json" --data "{\"email\":\"asma@gmail.com\",\"password\":\"test1234\"}" localhost:3000/auth/v1/login
```
| body name | type | example value |
| --- | --- | ---|
| email | string | asma@gmail.com |
| password | string | tesst1234|

Respond example
```JSON
{
    "resp": {
        "clinicId": 6,
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjc1NTA5MCwiZXhwIjoxNjI3MTg3MDkwfQ.4r2m4B8CLHeG7LU4MIBrC7DYZcGHsQ3cn7Ks0k_REt4"
    },
    "message": "login succeed."
}
```

Error example

```JSON
{
    "code": 400,
    "message": "Incorrect email or password"
}
```

#### POST localhost:3000/auth/v1/login
```
curl --request POST -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjYsImlhdCI6MTYyNjYyODcyNywiZXhwIjoxNjI3MDYwNzI3fQ.9EqHGmcKQnaRCv9jdSUIEJOR_vYVSsEO_9MTanNAaEo" --data "{\"clinic\":\"Happy clinic\",\"doctor_name\":\"dr. sam\",\"patient_name\":\"Jim Chau\",\"diagnosis\":\"headaches\",\"medication\":\"neurontin\",\"consultation_fee\":232,\"date\":\"2021-01-01 15:20:23\",\"follow_up\":true}" http://localhost:3000/consultation/v1/consultations/uploadRecord
```
| header name | example value |
| --- | ---|
|Authorization| Bearer {JWT token}|


| body name | type | example value |
| --- | --- | ---|
| clinic | string | Happy clinic |
| doctor_name | string | dr. sam|
| patient_name | string | Jim Chau|
| diagnosis | string | headaches|
| medication | string | neurontin|
| consultation_fee | number | 232|
| date | datetime | 2021-01-01 15:20:23|
|follow_up|boolean|true|

Respond example
```JSON
{
    "resp": {
        "consultationId": 11
    },
    "message": "create consultation record succeed."
}
```

Error example

```JSON
{
    "code": 401,
    "message": "Please authenticate"
}
```






