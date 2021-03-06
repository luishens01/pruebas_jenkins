#!/bin/bash


URL=$1

echo $URL

Result=$(curl -X POST \
  ""$URL"" \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -H 'postman-token: c14b549f-4ad6-166a-b325-17b8762245e7' \
  -d '{
  "descriptor_version": "i0ocAa",
  "id": "1b5bab2a-8286-2b40-4827-dc5d6e37bf8e",
  "status": "normal operation",
  "virtual_deployment_units": [
    {
      "id": "nostrud in",
      "resource_requirements": {
        "cpu": {
          "vcpus": 44612128
        },
        "memory": {
          "size": 80183833
        }
      }
    },
    {
      "id": "eu dolore nisi incididunt",
      "resource_requirements": {
        "cpu": {
          "vcpus": 2304668
        },
        "memory": {
          "size": 8962376
        }
      },
      "vdu_reference": "pariatur"
    },
    {
      "id": "commodo dolor nostrud",
      "resource_requirements": {
        "cpu": {
          "vcpus": 50962880
        },
        "memory": {
          "size": 91724292
        },
        "network": {
          "data_processing_acceleration_library": "adipisicing tempor ut in in"
        },
        "hypervisor_parameters": {
          "type": "qui laboris enim in",
          "version": "4920.305.4"
        }
      }
    },
    {
      "id": "in non sint",
      "resource_requirements": {
        "cpu": {
          "vcpus": 82258996,
          "cpu_support_accelerator": "non ea irure"
        },
        "memory": {
          "size": 89557457,
          "numa_allocation_policy": "sint Duis voluptate consectetur"
        }
      },
      "number_of_instances": 34083178
    }
  ]
}')

echo $Result






