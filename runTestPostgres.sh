#!/bin/bash
#
# Run the deid pipeline on docker  machine , does not start up postgres 
# Instance to put de-id data into . If you want both deid and a postgres 
# instnace use  "docker-compose up " for that .
# Afterwards run "docker up db" to bring up just postgres

# Update with the IP address your Postgres Server is running on before running . 
# 
docker run --net=host --add-host=mytestserver:141.106.79.132  -it -v /Users/gkowalski/docker/deid-docker/deid:/root/deid  deid /bin/bash -c /root/deid/postgresTest.sh
