#include "control.h"

void Control::click_btn()
{
    int num = Model::Instance()->btnCount();
    Model::Instance()->set_btnCount(num+1);
    qDebug() << " button";
}

Control::Control()
{

}
