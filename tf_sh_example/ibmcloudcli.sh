#!/bin/bash
whoami
echo "checking ob plugin"
ibmcloud ob
ibmcloud sat host attach --location us-east


ps aux
sleep 10

