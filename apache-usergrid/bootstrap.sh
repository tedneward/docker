curl -v -X PUT http://localhost:8080/system/database/setup -u superuser:password
curl -v -X PUT http://localhost:8080/system/database/bootstrap -u superuser:password
curl -v -X GET http://localhost:8080/system/superuser/setup -u superuser:password
