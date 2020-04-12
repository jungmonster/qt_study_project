#ifndef PRINTLOG_H
#define PRINTLOG_H

#include <QObject>
#include <iostream>

using namespace std;

class PrintLog : public QObject
{
    Q_OBJECT
public:
    PrintLog();

    void print_log();
signals:
    void call_ShowLog();
};

#endif // PRINTLOG_H
