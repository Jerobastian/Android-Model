# fichero Makefile
#
# nombre del fichero ejecutable
#
TARGETS= practica3

# banderas para el compilador (C y C++). Se indican los directorios donde se puenden
# encontrar ficheros para incluir mediante la opcion -I
# la opcion -g sirve para permitir la depuraci�n
#
CFLAGS=    -g  -std=c++11 -I/usr/include -I.
CXXFLAGS=  -g  -std=c++11 -I/usr/include -I.

# banderas pra el enlazador
# Se indica directorios donde encontrar las funciontecas con -L. Usando -l seguido del
# nombre se indica la funcionteca que se desea enlazar.
#
LDFLAGS=  -lGLU -lGL -lglut

# definicion del compilador
#
CC = g++

# definicion de objetos
#
OBJECTS= practica3.o escena.o ejes.o objeto3d.o revolucion.o android.o antenaand.o brazoand.o cabezaand.o piernaand.o
# orden que sera ejecutada por defecto
#
default : $(TARGETS)

# regla de ejecucion
#
$(TARGETS) : $(OBJECTS)
	$(CC) -o $@ $(CXXFLAGS) $(OBJECTS) $(LDFLAGS)

#
#
clean:
	rm -f *.o
	rm -f $(TARGETS)

#
#
redo:
	touch *.cc
	make

#
#
superclean:
	rm -f *.o
	rm *~
	rm -f $(TARGETS)

#
#
tgz:
	rm -f *.o
	rm -f $(TARGETS)
	tar -zcvf $(TARGETS).tgz *
