mpifort -c ./f_subroutine_mpi.f90
mpicc -c ./c_main_mpi.cpp
mpicc -o hybrid.exe ./c_main_mpi.o ./f_subroutine_mpi.o -lgfortran -lmpifort
