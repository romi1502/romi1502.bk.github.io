#!/bin/sh
HOST="ftp.takone.fr"
USER=takone
PASSWORD=`security find-internet-password -l "$HOST" -g 2>&1 | grep "password" | cut -d \\" -f 2`
echo "cd www\nmput .htaccess\nmput  *\nmkd img\ncd img\nlcd img\nmput *" | ftp -i ftp://$USER:$PASSWORD@$HOST