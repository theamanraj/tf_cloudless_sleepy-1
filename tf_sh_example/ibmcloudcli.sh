#!/bin/bash
whoami
echo "checking ob plugin"
ibmcloud ob
mv home/nobody/.terraform.d/plugins/terraform-provider-ibm_v1.9.0 home/nobody/.terraform.d/plugins/terraform-provider-ibm_v1.9.0_bkp

ps aux
sleep 10

