#!/bin/bash
  

echo "#################/tmp dir########################"
mkdir -p /tmp/testDir
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a directory in /tmp directory"
else
  echo "PASSED: appuser has write permission to create a directory in /tmp directory"
fi
mv /tmp/testDir /tmp/testDirRename
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to rename a directory in /tmp directory"
else
  echo "PASSED: appuser is able to rename a directory in /tmp directory"
fi
touch /tmp/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to create a file in /tmp directory"
else
  echo "PASSED: appuser is able to create a file in /tmp directory"
fi
cat /tmp/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to read a file in /tmp directory"
else
  echo "PASSED: appuser is able to read a file in /tmp directory"
fi
touch /tmp/testDirRename/a.sh
chmod +x /tmp/testDirRename/a.sh
cd /tmp/testDirRename
./a.sh
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to execute a shell script in /tmp directory"
else
  echo "PASSED: appuser is able to execute a shell script in /tmp directory"
fi
echo "#############################################"
echo "#################/dev dir########################"
cd /dev
mkdir devDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /dev directory"
else
  echo "FAILED: appuser has write permission in the /dev directory"
fi
rm -rf core
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser can't delete any directory in /dev directory"
else
  echo "FAILED: appuser can delete any directory in /dev directory"
fi
echo "#############################################"
echo "#################/bin dir########################"
cd /bin
mkdir binDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /bin directory"
else
   echo "FAILED: appuser has write permission in the /bin directory"
fi
jar --help
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no execute permission in the /bin directory"
else
  echo "PASSED: appuser has execute permission in /bin directory"
fi
echo "#############################################"
echo "#################/srv dir########################"
cd /srv
mkdir srvDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /srv directory"
else
  echo "FAILED: appuser has write permission in the /srv directory"
fi
echo "#############################################"
echo "#################/opt dir########################"
cd /opt
mkdir optDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /opt directory"
else
  echo "FAILED: appuser has write permission in the /opt directory"
fi
echo "#############################################"
echo "#################/mnt dir########################"
cd /mnt
mkdir mntDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /mnt directory"
else
  echo "FAILED: appuser has write permission in the /mnt directory"
fi
echo "#############################################"
echo "#################/sbin dir########################"
cd /sbin
mkdir sbinDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /sbin directory"
else
  echo "FAILED: appuser has write permission in the /sbin directory"
fi
rm -rf adduser
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser can't delete link in the /sbin directory"
else
  echo "FAILED: appuser can delete link in the /sbin directory"
fi
echo "#############################################"
echo "#################/media dir########################"
cd /media
mkdir mediaDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /media directory"
else
  echo "FAILED: appuser has write permission in the /media directory"
fi
echo "#############################################"
echo "#################/lib64 dir########################"
cd /lib64
mkdir lib64Dir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /lib64 directory"
else
  echo "FAILED: appuser has write permission in the /lib64 directory"
fi
python3.6 --version
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no execute permission in the /lib64 directory"
else
  echo "PASSED: appuser has execute permission in /lib64 directory"
fi
echo "#############################################"
echo "#################/lib dir########################"
cd /lib
mkdir libDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /lib directory"
else
  echo "FAILED: appuser has write permission in the /lib directory"
fi
java --version
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no execute permission in the /lib directory"
else
  echo "PASSED: appuser has execute permission in /lib directory"
fi
echo "#############################################"
echo "#################/lib dir########################"
cd /lib
mkdir libDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /lib directory"
else
  echo "FAILED: appuser has write permission in the /lib directory"
fi
java --version
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser has no execute permission in the /lib directory"
else
  echo "PASSED: appuser has execute permission in /lib directory"
fi
echo "#############################################"
echo "#################/boot dir########################"
cd /boot
mkdir bootDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /boot directory"
else
  echo "FAILED: appuser has write permission in the /boot directory"
fi
echo "#############################################"
echo "#################/run dir########################"
cd /run
mkdir runDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /run directory"
else
  echo "FAILED: appuser has write permission in the /run directory"
fi
echo "#############################################"
echo "#################/go dir########################"
cd /go
mkdir goDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /go directory"
else
  echo "FAILED: appuser has write permission in the /go directory"
fi
cd /go/bin
terraform version
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has execute permissio in /go/bin directory"
else
  echo "FAILED: appuser has no execute permissio in the /go/bin directory"
fi
echo "#############################################"
echo "#################/home dir########################"
cd /home
mkdir homeDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /home directory"
else
  echo "FAILED: appuser has write permission in the /home directory"
fi
mkdir -p /home/nobody/b
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has write permission in /home/nobody directory"
else
  echo "FAILED: appuser has no write permission in the /home/nobody directory"
fi
echo "#############################################"
echo "#################/etc dir########################"
cd /etc
mkdir etcDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /etc directory"
else
  echo "FAILED: appuser has write permission in the /etc directory"
fi
rm -rf yum.conf
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser can't delete a directory in the /etc directory"
else
  echo "FAILED: appuser can delete a directory in the /etc directory"
fi
echo "#############################################"
echo "#################/proc dir########################"
cd /proc
mkdir procDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /proc directory"
else
  echo "FAILED: appuser has write permission in the /proc directory"
fi
rm -rf self
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser can't delete a directory in the /proc directory"
else
  echo "FAILED: appuser can delete a directory in the /proc directory"
fi
echo "#############################################"
mkdir -p /sys/testDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in the /sys directory"
else
  echo "FAILED: appuser has write permission in /sys directory"
fi
rm -rf /sys/block
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in /sys directory"
else
  echo "FAILED: appuser has write permission in /sys directory"
fi
echo "#####################/usr dir########################"
mkdir -p /usr/local/bin/testDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in usr dir"
else
  echo "PASSED: appuser has write permission in usr dir"
fi
cd /usr/local/bin
echo '{"foo": 0}' | jq
if [ $? -ne 0 ] ; then
  echo "FAILED: appuser is not able to execute pre installed app in usr dir"
else
  echo "PASSED: appuser is able to execute pre-installed apps in usr dir"
fi
echo "#####################/var dir########################"
mkdir -p /var/testDir
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser has no write permission in var dir"
else
  echo "FAILED: appuser has write permission in var dir"
fi
touch /var/testDirRename/create.txt
if [ $? -ne 0 ] ; then
  echo "PASSED: appuser is not able to create a file in var directory"
else
  echo "FAILED: appuser is able to create a file in var directory"
fi
