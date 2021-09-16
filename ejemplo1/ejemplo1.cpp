#include "ejemplo1.h"

ejemplo1::ejemplo1(): Ui_Counter()
{
	setupUi(this);
	show();
    connect(button, SIGNAL(clicked()), this, SLOT(doButton()) );
   // QTimer *timer=new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(ActivacionTimer()));

    timer->start(500);



}
void ejemplo1::ActivacionTimer(){
    lcdNumber->display(contador);
    contador++;
    if(contador>25) contador=0;
}

void ejemplo1::doButton()
{
	qDebug() << "click on button";
    timer->stop();
}




