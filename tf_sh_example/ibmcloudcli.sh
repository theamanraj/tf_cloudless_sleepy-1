#!/bin/bash
whoami
echo "checking ob plugin"
echo "Prinintg key : $API_KEY" 
ibmcloud login --apikey $API_KEY
ibmcloud sat host attach --location us-east

sleep 10

