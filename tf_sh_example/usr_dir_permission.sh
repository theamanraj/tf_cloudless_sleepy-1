#!/bin/bash
  

echo "Testing Temp Directory permissions"

mkdir -p /usr/local/bin/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no write permission"
fi

cd /usr/local/bin
echo '{"foo": 0}' | jq
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to execute pre installed app"
fi
echo "PASSED: appuser is not able to execute pre installed app"
