#ifndef TIMERLOG_H
#define TIMERLOG_H

#include <QObject>
#include <iostream>
#include <QThread>

using namespace std;

class TimerLog : public QObject
{
    Q_OBJECT
public:
    TimerLog();

public slots:
    void show_log();
};

#endif // TIMERLOG_H
