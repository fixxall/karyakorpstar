Login:
curl -i -X POST -d "{\"npm\": \"21321\", \"password\": \"5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8\"}" localhost:8080/api/auth/signin -H "Content-Type: application/json"

Change password:
curl -i -X POST -d "{\"password\": \"5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8\", \"newPassword\": \"f2c57870308dc87f432e5912d4de6f8e322721ba\"}" localhost:8080/api/auth/changePassword -H "Content-Type: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJucG0iOiIyMTMyMSIsImlhdCI6MTYzMzE1NjE5OCwiZXhwIjoxNjMzMjQyNTk4fQ._aIRZG24XrFrsdJ57-6OH79atR8Gind4TGoLFkHDrdg"
 