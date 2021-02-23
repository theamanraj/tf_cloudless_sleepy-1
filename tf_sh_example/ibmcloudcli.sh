#!/bin/bash
api_key=$1
whoami
echo "checking ob plugin"
ic login --apikey $apikey -r $REGION
ibmcloud sat host attach --location us-east

sleep 10

