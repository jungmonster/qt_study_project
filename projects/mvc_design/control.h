#ifndef CONTROL_H
#define CONTROL_H

#include <QObject>
#include <model.h>
#include <Singleton.h>
#include <QDebug>

class Control : public QObject, public Singleton<Control>
{
Q_OBJECT

public slots:
    void click_btn();


public:
    Control();
};

#endif // CONTROL_H
