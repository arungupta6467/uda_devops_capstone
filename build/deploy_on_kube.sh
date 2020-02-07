#!/bin/bash
set -ex

TARGET_FILE=/Users/jaymojnidar/work/code/arun/github.com/uda_devops_capstone/deploy/rc_$2.json
SERVICE_FILE=/Users/jaymojnidar/work/code/arun/github.com/uda_devops_capstone/infra/capstone_service.json
MESSAGE=`cat /Users/jaymojnidar/work/code/arun/github.com/uda_devops_capstone/infra/rc_template.json`
echo $MESSAGE
NEWM=${MESSAGE/BUILD_NUMBER/$1:$2}
#NEWM=${MESSAGE/passion/desire}
echo $NEWM > $TARGET_FILE
cat $TARGET_FILE

kubectl apply -f $TARGET_FILE

#kubectl apply -f $SERVICE_FILE