#include <QCoreApplication>

#include "printlog.h"
#include "timerlog.h"
#include <QObject>
#include <QThread>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    PrintLog* print = new PrintLog();
    TimerLog* timer = new TimerLog();

    QThread* thread = new QThread();

    QObject::connect(print, &PrintLog::call_ShowLog, timer, &TimerLog::show_log);

//    timer->moveToThread(thread);
//    thread->start();

    print->print_log();

    return a.exec();
}
