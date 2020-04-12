#include "printlog.h"

PrintLog::PrintLog()
{
}

void PrintLog::print_log()
{
    cout << " print 01 " << endl;
    emit call_ShowLog();
    cout << " print 03 " << endl;
}
