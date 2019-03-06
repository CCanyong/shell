#! /bin/bash
#backup mysql 
#author by Canyong Chen

#define var
BACK_DIR=/home/chencanyong/backup/`date +%y%m%d`/
MYSQLUSER=root
MYSQLPWD=0517
MYSQLDB=liushuai

#detect if the user is root
if [ $UID -ne 0 ];then
	echo this script must use the root user
	exit 
fi

#if the dir is not exists, make it
if [[ -d $BACK_DIR ]]; then
	echo the dir is exist
else 
	mkdir -p $BACK_DIR
	echo make dir sucessfull
fi

#backup
mysqldump -u$MYSQLUSER -p$MYSQLPWD $MYSQLDB>$BACK_DIR/backup.sql



