#! /bin/bash
if [ -z $1 ]
#-z means if the length of first argument($1) is zero
then
 echo 
 echo " usuage : ./javaInstall.sh [path/to/java-jdk tar.gz file]"
 echo "----------------------------------------------------------"
 echo " example: ./javaInstall.sh /home/user1/Downloads/java-jdk.tar.gz"
 echo
else
 if [ -e $1 ]
 then
  echo Found $1
  echo "Ok Now all the configurations will start"
  echo 
  tar -xzvf $1
  jdk=$(ls|grep "jdk*")
  if [ -d $jdk ]
  then
    echo move $jdk to  /opt
    sudo mv $jdk /opt
    cd /opt/$jdk
    pwd
    sudo update-alternatives --install /usr/bin/java java /opt/jdk1.7.0_17/bin/java 1
    sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_17/bin/javac 1
    sudo update-alternatives --set java /opt/jdk1.7.0_17/bin/java
    sudo update-alternatives --set javac /opt/jdk1.7.0_17/bin/javac
    echo
    echo "----------------Java successfully installed--------------"
    echo
    read -p "Install plugin for mozilla ?(y/n)" mz
    if [ $mz == 'y' ] || [ $mz == 'Y' ]
    then
     echo plugin installing mozilla
     sudo update-alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so mozilla-javaplugin.so /opt/jdk1.7.0_17/jre/lib/amd64/libnpjp2.so 1
     sudo update-alternatives --set mozilla-javaplugin.so /opt/jdk1.7.0_17/jre/lib/amd64/libnpjp2.so
    fi
    java -version
  fi
 else
  echo "File doesn't exist exiting.."
  exit
 fi
fi

exit
