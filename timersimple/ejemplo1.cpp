#include "ejemplo1.h"


ejemplo1::ejemplo1(): Ui_Counter()
{
	setupUi(this);
	show();
	connect(button, SIGNAL(clicked()), this, SLOT(doButton()));
	
	mytimer.connect(std::bind(&ejemplo1::cuenta, this));
    mytimer.start(500);
    mytimerLong.connect(std::bind(&ejemplo1::cuentaLong, this));
    mytimerLong.start(1000);

}

ejemplo1::~ejemplo1()
{}
/* doButton:
 * comprueba si el contador esta en marcha o no, y dependiendo del estado, lo pone en
 * marcha o lo para, si lo pone en marcha lo pone con el periodo que indique el usuario
 * en el dial*/
void ejemplo1::doButton()
{
	static bool stopped = false;
	stopped = !stopped;
	if(stopped)
		mytimer.stop();

	else
		mytimer.start(dial->sliderPosition());

	qDebug() << "click on button";
}
/* Metodo cuenta:
 * Muestra por pantalla el contador dependiendo del periodo e incrementa este contador
 * Tambien muestra por pantalla el periodo actual por pantalla*/
void ejemplo1::cuenta()
{

    lcdNumber->display(++cont);
    lcdPeriodo->display(mytimer.getPeriod());
	trick++;
}
/*Metodo cuentaLong:
 * muestra por pantalla e incrementa el contador desde el inicio del contador(en segundos
 * */
void ejemplo1::cuentaLong()
{

    lcdNumber_2->display(++contLong);

}

