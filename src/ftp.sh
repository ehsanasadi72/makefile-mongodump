#!/bin/sh
HOST='127.0.0.1'
USER=''
PASSWD=''

if ! command vsftpd -v 
then
    sudo apt-get install vsftpd 
    sudo systemctl start vsftpd.service

fi
if  ! grep -q write_enabled=YES /etc/vsftpd.conf; then
    echo 'write_enabled=YES' | sudo tee --append /etc/vsftpd.conf 
    sudo systemctl restart vsftpd.service
fi

if ! [ -d "../dump" ]
then
    echo 'Cant find dump dir'
    exit
else
    cd ../dump
fi


ftp -n $HOST  <<END_SCRIP
quote USER $USER
quote PASS $PASSWD
binary
prompt
mput *
quit
END_SCRIPT
exit 0 