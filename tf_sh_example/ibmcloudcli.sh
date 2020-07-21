#!/bin/bash

printenv

set -e
echo "checking ob plugin"
ibmcloud ob
sleep 10

