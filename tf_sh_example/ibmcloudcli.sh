#!/bin/bash
whoami
echo "checking ob plugin"
echo $api_key
ibmcloud login --apikey $api_key
ibmcloud sat host attach --location us-east

sleep 10

