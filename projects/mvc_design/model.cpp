#include "model.h"

int Model::btnCount()
{
    return this->m_btnCount;
}

void Model::set_btnCount(int data)
{
    this->m_btnCount = data;
    emit changed_btnCount(this->m_btnCount);
}

Model::Model()
{
    this->m_btnCount = 0;
}
