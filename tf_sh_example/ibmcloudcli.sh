#!/bin/bash
whoami
echo "checking ob plugin"
ibmcloud ob
ibmcloud cs
echo "checking cs plugin"
ibmcloud cr
echo "checking cr plugin"
kubectl version
echo "kubectl version"
terraform version
echo "checking terraform"

sleep 10

