curl -X PUT http://localhost:8080/system/database/setup -u superuser:test
curl -X PUT http://localhost:8080/system/database/bootstrap -u superuser:test
curl -X GET http://localhost:8080/system/superuser/setup -u superuser:test
