#!/bin/bash


URL=$1

echo $URL

Result=$(curl -X POST \
  ""$URL"" \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: 0721f4ba-0824-8077-35b1-396c915049ee' \
  -d '{
  "description": "Rubik_descriptor",
  "flavorId": "",
  "id": "0ef2e8b7-886f-4dc2-8422-09b881bd802f",
  "instantiateTime": "2018-05-10T16:15:20.306325",
  "name": "Rubik_name",
  "netServInstance_Uuid": [
    {
      "NSInstancesId": "704f2d66-4e44-404d-ad7c-2c3d20348506"
    }
  ],
  "nsiState": "INSTANTIATED",
  "nstId": "30ef541d-24ee-4ec3-8c00-f53b4a3791cb",
  "nstInfoId": "",
  "sapInfo": "",
  "scaleTime": "",
  "terminateTime": "",
  "updateTime": "",
  "vendor": "VENDOR"
}')

echo $Result






