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

void ejemplo1::cuenta()
{

    lcdNumber->display(++cont);
    lcdPeriodo->display(mytimer.getPeriod());
	trick++;
}
void ejemplo1::cuentaLong()
{

    lcdNumber_2->display(++contLong);

}

