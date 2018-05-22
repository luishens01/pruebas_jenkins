#!/bin/bash

ENV_0=$1
echo $ENV_0
ls $ENV_0
echo
echo "" > envfile.yml

composed_env_path="../../environments/$ENV_0"


cp -v $composed_env_path envfile.yml

#cat envfile.yml
mkdir ../../results/packages

ENV="envfile.yml"

##deleting elements
sed -i -- "s/environment_file/$ENV/g" delete_packages.yml
echo
echo
result_delete=$(tavern-ci delete_packages.yml --stdout --debug)
echo $result_delete
echo "" > ../../results/packages/delete_results.log
echo $result_delete >> ../../results/packages/delete_packages_results.log
echo
sed -i -- "s/$ENV/environment_file/g" delete_packages.yml
echo
#
#
#
URL=$(cat upload.conf | grep -Po 'url":"\K[^"]+')
FL=$(cat upload.conf | grep -Po 'fl":"\K[^"]+')

echo $URL
echo $FL
##uploading test elemement
result_upload=$(sh upload_package.sh -p ''$FL'' -u ''$URL'')
echo echo $result_upload
echo "" > ../../results/packages/upload_results.log
echo $result_upload >> ../../results/packages/upload_package_results.log
echo
#
#
#
##getting elements
sed -i -- "s/environment_file/$ENV/g" get_packages.yml
echo
echo
result_get=$(tavern-ci get_packages.yml --stdout --debug)
echo $result_get
echo "" > ../../results/packages/get_results.log
echo $result_get >> ../../results/packages/get_packages_results.log
echo
sed -i -- "s/$ENV/environment_file/g" get_packages.yml
echo
echo "test finished"





