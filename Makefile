# Makefile for Student Management System
objects=main.o grade.o menu.o student.o utils.o
number_utils : $(objects)
	gcc $(objects) -o number_utils
grade.o : grade.c grade.h
	gcc -c grade.c 
menu.o : menu.c menu.h grade.h utils.h
	gcc -c menu.c 
student.o : student.c student.h 
	gcc -c student.c 
utils.o : utils.c utils.h
	gcc -c utils.c
main.o : main.c menu.h student.h 
	gcc -c main.c 
clean : 
	rm -f *. number_utils
