#ifndef _ESCENA_H
#define _ESCENA_H

#include "ejes.h"
#include "objeto3d.h"
#include "android.h"


class Escena
{
	private:
	// tamaño de los ejes
	#define AXIS_SIZE 5000
	Ejes ejes;

	// variables que definen la posicion de la camara en coordenadas polares
	GLfloat Observer_distance;
	GLfloat Observer_angle_x;
	GLfloat Observer_angle_y;

	// variables que controlan la ventana y la transformacion de perspectiva
	GLfloat Width,Height,Front_plane,Back_plane;

	bool animacion;
	float velocidad;
	bool solido;
	Android android;

	char mode;

	private:
		void clear_window();
		void draw_axis();
		void draw_objects();

	//Transformación de cámara
		void change_projection();
		void change_observer();

	public:
	Escena();
		void inicializar(int UI_window_width,int UI_window_height);
		void redimensionar(int newWidth,int newHeight) ;

		//Obtener datos de un archivo PLY
		void getPLY(char **argv);
		void getPLYAndRev(char **argv);

		// Dibujar
		void dibujar() ;
		void animar();

		// Interacción con la escena
		int teclaPulsada(unsigned char Tecla1,int x,int y) ;
		void teclaEspecial(int Tecla1,int x,int y);
};
#endif
