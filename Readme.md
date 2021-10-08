# Karya Korps Taruna Poltek SSN Superapp

## Description
API for Karya Korps Taruna, coded in node-express and implementing JWT authentication

## Authorization

### Login:
[POST] /api/auth/login
1. Recieve npm and SHA1-digested password in JSON
```Json
{
    "npm": "INSERT_NPM",
    "password": "INSERT_PASSWORD_SHA1_DIGEST"
}
```
2. Sanitize input to only recieve decimal numbers on npm and hexadecimal numbers on password
3. Check if user exist. If not, return
4. Check if recieved password matches
5. Return response
```json
{
    "fullname": "USER_FULLNAME",
    "accessToken": "BEARER_TOKEN"
}
```
if something went wrong, a json will be sent
```json
{
    "message": "ERROR_MESSAGE"
}
```

##### Windows curl
ex:
```bash
curl -i -X POST -d "{\"npm\": \"2019101608\", \"password\": \"5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8\"}" localhost:8080/api/auth/signin -H "Content-Type: application/json"
```

### Authentication
To access any other path than login, use Headers
```json
{
    "Authorization": "Bearer INSERT_BEARER_TOKEN",
}
```
### Change password:
[POST] /api/auth/changePassword
#### Sent data
```json
{
    "password": "INSERT_PASSWORD_SHA1_DIGEST",
    "newPassword": "INSERT_NEW_PASSWORD_SHA1_DIGEST"
}
```
#### Response
```json
{
    "message": "MESSAGE"
}
```
##### Windows curl
ex:
```bash
curl -i -X POST -d "{\"password\": \"5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8\", \"newPassword\": \"f2c57870308dc87f432e5912d4de6f8e322721ba\"}" localhost:8080/api/auth/changePassword -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzE1OTQzNywiZXhwIjoxNjMzMjQ1ODM3fQ.lEwqO-IneyXtL4vJIVF0dNAnmbLS9VkC504UL-deIOg"
```

## Configuration
### Open fasting
[POST] /api/config/openfasting
#### Sent data
```json
{
    "fastingdate": "DATE_TO_OPEN_FASTING_IN_YYYY-MM-DD_FORMAT"
}
```
#### Response
```json
{
    "message": "MESSAGE"
}
```
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/config/openfasting -d "{\"fastingdate\": \"2021-10-9\"}" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzY1Nzk2MSwiZXhwIjoxNjMzNzQ0MzYxfQ.hvkjY7aUTDMBKDuyuHiBY-c71gEeM_89HT3oWdoyCC4"
```

### Close fasting
[POST] /api/config/closefasting
#### Response
```json
{
    "message": "MESSAGE"
}
```
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/config/closefasting -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzY1Nzk2MSwiZXhwIjoxNjMzNzQ0MzYxfQ.hvkjY7aUTDMBKDuyuHiBY-c71gEeM_89HT3oWdoyCC4"
```

## Fasting
### Register
[POST] /api/fasting/register
#### Response
```json
{
    "message": "MESSAGE"
}
```
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/fasting/register -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMDE5MTAxNjA4IiwiaWF0IjoxNjMzNjg4NzE5LCJleHAiOjE2MzM3NzUxMTl9.Kel3rmdHU4WxQvQSlWhX3SIAUT5aZPYV7hI51-QWJQs"
```

### Cancel
[POST] /api/fasting/cancel
#### Response
```json
{
    "message": "MESSAGE"
}
```
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/fasting/cancel -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzE4NjA4MSwiZXhwIjoxNjMzMjcyNDgxfQ.nttJ45rmQWR-xXxkZPowwaZP5sSWjr8pmyrYrXdJRLI"
```

### All
[GET] /api/fasting/all
#### Response
```json
{
    "data":[
        {
            "npm": "NPM1",
            "fullname": "FULLNAME1",
            "registered": true or false
        }, {
            "npm": "NPM2",
            "fullname": "FULLNAME2",
            "registered": true or false
        }
    ],
    "date": "FASTING_DATE_IN_YYYY-MM-DD_FORMAT"
}
```    
##### Windows curl
ex:
```bash
curl -i -X GET localhost:8080/api/fasting/list -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMDE5MTAxNjA4IiwiaWF0IjoxNjMzNjg4NzE5LCJleHAiOjE2MzM3NzUxMTl9.Kel3rmdHU4WxQvQSlWhX3SIAUT5aZPYV7hI51-QWJQs"
```

### Clear
[POST] /api/fasting/clear
#### response
```json
{
    "message": "MESSAGE"
}
```    
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/fasting/clear -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzQxMzUyMywiZXhwIjoxNjMzNDk5OTIzfQ.6VQoBq_fmQOsCr6m2QFp921TR6qBcNMey4mefrLFouE"
```

### Download
[GET] /api/fasting/download
#### response
A file named ```temp.csv``` or
```json
{
    "message": "MESSAGE"
}
```

### Note
If the fasting fiture is turned off in the configuration, a 403 response with json will be sent
```json
{
    "message": "Routes is closed!"
}
```

## Commerce
### Order
[POST] /api/commerce/order
#### Sent data
```json
{
    "productname": "INSERT_PRODUCT_NAME",
    "price": "INSERT_PRODUCT_PRICE",
    "quantity": "INSERT_PRODUCT_QUANTITY"
}
```
#### Response
```json
{
    "message": "MESSAGE"
}
```
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/commerce/order -d "{\"productname\": \"Susu Bubuk Coklat Indomilk 800g\", \"price\": \"68500\", \"quantity\": \"1\"}" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzU3NTQ1MywiZXhwIjoxNjMzNjYxODUzfQ.O3qSY0HjMD4iJJSQwpUqDlpfUcFSUH5V8aLlUwauzsQ"
```

### All
[GET] /api/commerce/all
#### Response
```json
{

}
```    
##### Windows curl
ex:
```bash
curl -i -X GET localhost:8080/api/commerce/list -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzU3NTQ1MywiZXhwIjoxNjMzNjYxODUzfQ.O3qSY0HjMD4iJJSQwpUqDlpfUcFSUH5V8aLlUwauzsQ"
```

### Clear
[POST] /api/commerce/clear
#### response
```json
{
    "message": "MESSAGE"
}
```    
##### Windows curl
ex:
```bash
curl -i -X POST localhost:8080/api/commerce/clear -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzQxMzUyMywiZXhwIjoxNjMzNDk5OTIzfQ.6VQoBq_fmQOsCr6m2QFp921TR6qBcNMey4mefrLFouE"
```
