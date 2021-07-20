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

POST localhost:3000/auth/v1/register

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




