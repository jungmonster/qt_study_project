#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>
#include <iostream>

using namespace std;

class Counter : public QObject
{
    Q_OBJECT

public:
    Counter(string name);

    int value() const ;

public slots:
    void setValue(int value);

signals:
    void valueChanged(int newValue);

private:
    int m_value;
    string obj_name = "";
};


#endif
