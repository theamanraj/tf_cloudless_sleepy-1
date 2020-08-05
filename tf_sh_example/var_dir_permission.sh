#!/bin/bash
  

echo "Testing Temp Directory permissions"

mkdir -p /var/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no write permission in var dir"
fi

mv /var/testDir /var/testDirRename
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser can't rename a directory/file"
fi


touch /var/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file"
fi

cat /var/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file"
fi


touch /var/testDirRename/a.sh
chmod +x /var/testDirRename/a.sh
cd /var/testDirRename
./a.sh
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to execute a shell script"
fi
