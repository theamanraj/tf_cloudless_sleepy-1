#!/bin/bash
  

echo "Testing Temp Directory permissions"

mkdir -p /sys/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no write permission in sys dir"
fi



rm -rf /sys/block
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not allowed to delete system files"
fi
