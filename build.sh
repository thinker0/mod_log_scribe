#!/bin/sh


autoreconf --force --verbose --install
aclocal
autoconf
autoheader
automake --add-missing
./configure --config-cache $*
make

/usr/sbin/apxs -a -i -c -Iscribe-cpp -Lscribe-cpp -Lscribe-cpp/gen-cpp -I/usr/include/thrift -I/usr/include/c++/4.1.2 -L/usr/lib64 -lthrift -lscribe -Wc,-g3 mod_log_scribe.c
