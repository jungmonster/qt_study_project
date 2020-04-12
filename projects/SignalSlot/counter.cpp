#include "counter.h"

Counter::Counter(string name)
{
    this->m_value = 0;
    this->obj_name = name;
}

int Counter::value() const
{
    return m_value;
}


void Counter::setValue(int value)
{
    if (value != m_value) {
        m_value = value;
         cout << obj_name << " : value " << this->m_value << endl;
        emit valueChanged(value);
    }
}
