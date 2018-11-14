#!/bin/bash

archive_create_zip() { [ -d $2 ] && opt="-r"; zip $opt $1 $2; }
archive_create_gzip() { [ -d $1 ] && opt="-r"; gzip -k $opt $1; }
archive_create_tar() { [ -d $1 ] && opt="-r"; gzip -k $opt $1; }

archive_extract_zip() { unzip $1 -d $2; }
archive_extract_gzip() { gunzip $1; }
archive_extract_lzma() { unlzma $1; }
archive_extract_tar() { tar xjf $1 -C $2; }
archive_extract_tar_gz() { tar xzf $1 -C $2; }
archive_extract_tar_xz() { tar xJf $1 -C $2; }
archive_extract_tar_bz2() { tar xjf $1 -C $2; }
archive_extract_rar() { unrar $1 x $2; }

# archive_create_tar_gz [file|dir] [dest]
# archive_create_rar [file|dir] [dest]
# archive_create_tar_bz2 [file|dir] [dest]
# 
# archive_create_zip /home/minhaz/os.zip /home/minhaz/os.svg
# archive_create_zip /home/minhaz/asma.zip /home/minhaz/asma/exp
# archive_extract_zip /home/minhaz/asma.zip /tmp/mewmew
# 
# archive_create_gzip /home/minhaz/os.svg
# archive_create_gzip /home/minhaz/asma/exp # WARNING all files will be gziped
# 
