#!/bin/bash
  

echo "Testing Temp Directory permissions"

mkdir -p /var/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no write permission"
fi
echo "PASSED: appuser has write permission to create a directory/file"

mv /var/testDir /var/testDirRename
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser can't rename a directory/file"
fi
echo "PASSED: appuser is able to rename a directory/file"

touch /var/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file"
fi
echo "PASSED: appuser is able to create a file"

cat /var/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file"
fi
echo "PASSED: appuser is able to read a file"

touch /var/testDirRename/a.sh
chmod +x /var/testDirRename/a.sh
cd /var/testDirRename
./a.sh
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to execute a shell script"
fi
 echo "PASSED: appuser is able to execute a shell script"
