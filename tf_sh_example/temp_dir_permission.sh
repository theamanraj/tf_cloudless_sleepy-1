#!/bin/bash
  

echo "Testing Temp Directory permissions"

mkdir -p /tmp/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a directory"
  exit 1
fi
echo "PASSED: appuser has write permission create a directory"

mv /tmp/testDir /tmp/testDirRename
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to rename a directory"
  exit 1
fi
echo "PASSED: appuser is able to rename a directory"

touch /tmp/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file"
  exit 1
fi
echo "PASSED: appuser is able to create a file"

cat /tmp/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file"
  exit 1
fi
echo "PASSED: appuser is able to read a file"
