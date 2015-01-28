#!/bin/sh
dest_dir=/usr/bin
src_dir=`pwd`
files="backup_file create_mbr resume_sys"
for file in $files
do
    rm ${dest_dir}/$file
    chmod 777 $file
    cp -avR  ${src_dir}/$file ${dest_dir}/$file
done
