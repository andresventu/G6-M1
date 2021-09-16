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
void ejemplo1::ActivacionTimer(){
    lcdNumber->display(contador);
    contador++;

}

void ejemplo1::doButton()
{

    timer.stop();
}
void ejemplo1::doButtonStart()
{
    dial->sliderPosition();
    num_frecuencia=dial->sliderPosition();
    frecuencia->display(num_frecuencia);

    timer.start(num_frecuencia);
}




