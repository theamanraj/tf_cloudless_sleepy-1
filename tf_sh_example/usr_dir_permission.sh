#!/bin/bash
  

echo "Testing Temp Directory permissions"

mkdir -p /usr/local/bin/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no write permission to usr dir"
fi

cd /usr/local/bin
echo '{"foo": 0}' | jq
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to execute pre installed app"
fi
echo "PASSED: appuser is able to execute pre-installed apps"
