#!/bin/sh
HOST='127.0.0.1'
USER='test'
PASSWD='test'
FILE='/home/test/Downloads/image.jpg'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
put $FILE
quit
END_SCRIPT
exit 0