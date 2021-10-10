# Karya Korps Taruna Poltek SSN Superapp

## DescriptionNd
API for Karya Korps Taruna, coded in node-express and implementing JWT authentication

## Authorization

### Login:
[POST] /api/auth/login
#### Sent data
```Json
{
    "npm": "INSERT_NPM",
    "password": "INSERT_PASSWORD_SHA1_DIGEST"
}
```
#### Response
```json
{
    "npm": "USER_NPM",
    "isFastingAdmin": true or false,
    "isCommerceAdmin": true or false,
    "accessToken": "BEARER_TOKEN"
}
```

##### Windows curl
ex:
```bash
curl -i -X POST -d "{\"npm\": \"1817101465\", \"password\": \"da39a3ee5e6b4b0d3255bfef95601890afd80709\"}" localhost:8080/api/auth/signin -H "Content-Type: application/json"
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
    "fastingdate": "DATE_TO_OPEN_FASTING_IN_RFC2822_DATE_FORMAT"
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
curl -i -X POST localhost:8080/api/config/openfasting -d "{\"fastingdate\": \"2021-10-9\"}" -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIxODE3MTAxNDY1IiwiaWF0IjoxNjMzNzYxMzEwLCJleHAiOjE2MzM4NDc3MTB9.Det921_tBhe1wYBg79r3aO8K3Wiind7HBgwOo0MwFdM"
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
curl -i -X POST localhost:8080/api/config/closefasting -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIxODE3MTAxNDY1IiwiaWF0IjoxNjMzNzYxMzEwLCJleHAiOjE2MzM4NDc3MTB9.Det921_tBhe1wYBg79r3aO8K3Wiind7HBgwOo0MwFdM"
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
curl -i -X POST localhost:8080/api/fasting/register -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIxODE3MTAxNDY1IiwiaWF0IjoxNjMzNzYxMzEwLCJleHAiOjE2MzM4NDc3MTB9.Det921_tBhe1wYBg79r3aO8K3Wiind7HBgwOo0MwFdM"
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
curl -i -X POST localhost:8080/api/fasting/cancel -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIxODE3MTAxNDY1IiwiaWF0IjoxNjMzNzYxMzEwLCJleHAiOjE2MzM4NDc3MTB9.Det921_tBhe1wYBg79r3aO8K3Wiind7HBgwOo0MwFdM"
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
            "class": "CLASS1",
            "registered": true or false
        }, {
            "npm": "NPM2",
            "fullname": "FULLNAME2",
            "class": "CLASS2",
            "registered": true or false
        }
    ],
    "date": "FASTING_DATE_IN_YYYY-MM-DD_FORMAT",
    "isOpened": true or false
}
```    
##### Windows curl
ex:
```bash
curl -i -X GET localhost:8080/api/fasting/list -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIxODE3MTAxNDY1IiwiaWF0IjoxNjMzNzYxMzEwLCJleHAiOjE2MzM4NDc3MTB9.Det921_tBhe1wYBg79r3aO8K3Wiind7HBgwOo0MwFdM"
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
curl -i -X POST localhost:8080/api/fasting/clear -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIxODE3MTAxNDY1IiwiaWF0IjoxNjMzNzYxMzEwLCJleHAiOjE2MzM4NDc3MTB9.Det921_tBhe1wYBg79r3aO8K3Wiind7HBgwOo0MwFdM"
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
