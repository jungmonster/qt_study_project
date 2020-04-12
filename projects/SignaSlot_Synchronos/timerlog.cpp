#include "timerlog.h"

TimerLog::TimerLog()
{

}

void TimerLog::show_log()
{
    QThread::sleep(3);
    cout << " print 02 " << endl;
}
