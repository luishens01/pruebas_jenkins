#!/bin/bash

ENV=$1

echo "This is the environment file you have select:"
echo $ENV

cd components/packages/
sh test_script.sh ''$ENV''

echo "Main script finished"

