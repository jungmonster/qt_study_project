#include <QCoreApplication>
#include <QObject>
#include "counter.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Counter *a1 = new Counter("obj_a1");
    Counter *b1 = new Counter("obj_b1");

    QObject::connect(a1, &Counter::valueChanged, b1, &Counter::setValue);

    a1->setValue(12);
    cout<< "-------------" << endl;
    a1->setValue(48);

    return a.exec();
}
