#! /bin/zsh

# backup.sh

# Archive the given file or directory
# Backing up a directory
# Creating a backup file of given name with timestamp
# Archive file name format : archive_name_ddmmyyyy_HHMM.tar.gz


# parameters
ARCHIVE_NAME=$1
LOCATION_TO_ARCHIVE=$2
ARCHIVE_LOCATION=$3
TIMESTAMP=$(date "+%d%m%Y_%H%M")

#set default ARCHIVE_LOCATION as ~/backup
if [ ! $ARCHIVE_LOCATION ]
then
  ARCHIVE_LOCATION=~/backup
fi

# Adding timestamp to my archive
ARCHIVE=$ARCHIVE_NAME\_$TIMESTAMP

tar cfvz $ARCHIVE_LOCATION/$ARCHIVE.tar.gz -C $LOCATION_TO_ARCHIVE . 
