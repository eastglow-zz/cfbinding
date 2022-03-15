#bin/sh

rm -f *.o
rm -f *.a
mpicc -c wrapmpi.cpp
ar rcv libwrapmpi.a *.o
rm -f *.o
