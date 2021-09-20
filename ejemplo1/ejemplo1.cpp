#include "ejemplo1.h"

ejemplo1::ejemplo1(): Ui_Counter()
{
	setupUi(this);
	show();
    connect(button, SIGNAL(clicked()), this, SLOT(doButton()) );
    connect(buttonStart, SIGNAL(clicked()), this, SLOT(doButtonStart()) );
    connect(&timer, SIGNAL(timeout()), this, SLOT(ActivacionTimer()));
    frecuencia->display(num_frecuencia);

    timer.start(num_frecuencia);

}
//Muestra el contador por pantalla en el lcdNumber y lo aumenta
void ejemplo1::ActivacionTimer(){
    lcdNumber->display(contador);
    contador++;

}

void ejemplo1::doButton()
{

    timer.stop();
}
//Al pulsar en el boton start, se actualiza la variable num_frecuencia
//con el nuevo valor del dial y se inicia de nuevo el contador con la
//nueva frecuencia o periodo
void ejemplo1::doButtonStart()
{

    num_frecuencia=dial->sliderPosition();
    frecuencia->display(num_frecuencia);

    timer.start(num_frecuencia);
}




