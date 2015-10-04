# defining the variables
objects = main.o tri_mod.o
f90comp = gfortran

# Makefile
exec: $(objects)
	$(f90comp) -o exec $(objects)

righttriangle.mod: tri_mod.o tri_mod.f95
	$(f90comp) -c tri_mod.f95

tri_mod.o: tri_mod.f95
	$(f90comp) -c tri_mod.f95

main.o: main.f95
	$(f90comp) -c main.f95


# cleaning
clean:
	rm  $(objects)



