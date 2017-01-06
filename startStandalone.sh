#!/bin/bash
#
# Run the deid pipeline on docker  machine , does not start up postgres 
# Instance to put de-id data into . If you want both deid and a postgres 
# instnace use  "docker-compose up " for that .
# Afterwards run "docker up db" to bring up just postgres

docker run -it -v /Users/gkowalsk/docker/deid_docker/deid:/root/deid  deid \
	/bin/bash -c /root/deid/runDeID_Docker.sh
