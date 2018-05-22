#!/bin/bash

ENV_0=$1
echo $ENV_0
ls $ENV_0
echo
echo "" > envfile.yml

composed_env_path="../../environments/$ENV_0"


cp -v $composed_env_path envfile.yml

#cat envfile.yml
mkdir ../../results/tng-rep

ENV="envfile.yml"

#
#
#
URL=$(cat upload.conf | grep -Po 'url":"\K[^"]+')

echo $URL
##uploading test elemement
result_upload=$(sh upload_vnfr.sh ''$URL'')
echo echo $result_upload
echo "" > ../../results/tng-rep/upload_vnfrs_results.log
echo $result_upload >> ../../results/tng-rep/upload_vnfrs_results.log
echo
#
#
#
##getting elements
sed -i -- "s/environment_file/$ENV/g" get_vnfrs.yml
echo
echo
result_get=$(tavern-ci get_vnfrs.yml --stdout --debug)
echo $result_get
echo "" > ../../results/tng-rep/get_vnfrs_results.log
echo $result_get >> ../../results/tng-rep/get_vnfrs_results.log
echo
sed -i -- "s/$ENV/environment_file/g" get_vnfrs.yml
#
#
##deleting elements
sed -i -- "s/environment_file/$ENV/g" delete_vnfrs.yml
echo
echo
result_get=$(tavern-ci delete_vnfrs.yml --stdout --debug)
echo $result_get
echo "" > ../../results/tng-rep/delete_vnfrs_results.log
echo $result_get >> ../../results/tng-rep/delete_vnfrs_results.log
echo
sed -i -- "s/$ENV/environment_file/g" delete_vnfrs.yml



echo
echo "test finished"





