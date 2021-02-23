#!/bin/bash
api_key=$1
whoami
echo "checking ob plugin"
ic login --apikey ${api_key}
ibmcloud sat host attach --location us-east

sleep 10

