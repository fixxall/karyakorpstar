Login:
curl -i -X POST -d "{\"username\": \"test\", \"password\": \"newpassword\"}" localhost:8080/api/auth/signin -H "Content-Type: application/json"

Change password:
curl -i -X POST -d "{\"username\": \"test\", \"password\": \"password\", \"newPassword\": \"newpassword\"}" localhost:8080/api/auth/changePassword -H "Content-Type: application/json" -H "x-access-token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjMyODc3Nzc2LCJleHAiOjE2MzI5NjQxNzZ9.qc7wNwQVitAZVOkzvwbEPIu8W6Lx4nDPWyKkzHvaN_g"
 