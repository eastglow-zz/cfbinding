mpifort -c ./f_core_mpi.f90
mpicc -c ./c_main_plain.cpp
mpicc -o semihybrid.exe ./c_main_plain.o ./f_core_mpi.o -lgfortran -lmpifort
