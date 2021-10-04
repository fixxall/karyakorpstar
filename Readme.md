# Karya Korps Taruna Poltek SSN Superapp

## Description
API for Karya Korps Taruna, coded in node-express and implementing JWT authentication

## Authorization

### Login:
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

#### API Path
##### Windows
```bash
curl -i -X POST -d "{\"npm\": \"INSERT_NPM\", \"password\": \"INSERT_PASSWORD_SHA1_DIGEST\"}" localhost:8080/api/auth/signin -H "Content-Type: application/json"
```
ex:
```bash
curl -i -X POST -d "{\"npm\": \"21321\", \"password\": \"5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8\"}" localhost:8080/api/auth/signin -H "Content-Type: application/json"
```

### Change password:
#### API Path
##### Windows
```bash
curl -i -X POST -d "{\"password\": \"INSERT_PASSWORD_SHA1_DIGEST\", \"newPassword\": \"INSERT_NEW_PASSWORD_SHA1_DIGEST\"}" localhost:8080/api/auth/changePassword -H "Content-Type: application/json" -H "Authorization: Bearer INSERT_BEARER_TOKEN"
```
ex:
```bash
curl -i -X POST -d "{\"password\": \"5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8\", \"newPassword\": \"f2c57870308dc87f432e5912d4de6f8e322721ba\"}" localhost:8080/api/auth/changePassword -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzE1OTQzNywiZXhwIjoxNjMzMjQ1ODM3fQ.lEwqO-IneyXtL4vJIVF0dNAnmbLS9VkC504UL-deIOg"
```

## Fasting
### Register
```bash
curl -i -X POST localhost:8080/api/fasting/register -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzE4NjA4MSwiZXhwIjoxNjMzMjcyNDgxfQ.nttJ45rmQWR-xXxkZPowwaZP5sSWjr8pmyrYrXdJRLI"
```

### Cancel
```bash
curl -i -X POST localhost:8080/api/fasting/cancel -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzE4NjA4MSwiZXhwIjoxNjMzMjcyNDgxfQ.nttJ45rmQWR-xXxkZPowwaZP5sSWjr8pmyrYrXdJRLI"
```