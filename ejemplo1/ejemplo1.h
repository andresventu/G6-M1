#ifndef ejemplo1_H
#define ejemplo1_H

#include <QtGui>
#include "ui_counterDlg.h"

class ejemplo1 : public QWidget, public Ui_Counter
{
    Q_OBJECT
    public:
        ejemplo1();
        int contador=0;
         QTimer *timer=new QTimer(this);

    public slots:
        void ActivacionTimer();
        void doButton();
};
#endif // ejemplo1_H
