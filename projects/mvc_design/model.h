#ifndef MODEL_H
#define MODEL_H

#include <QObject>
#include <Singleton.h>

class Model : public QObject, public Singleton<Model>
{
Q_OBJECT
public:
    Q_PROPERTY(int btnCount READ btnCount WRITE set_btnCount NOTIFY changed_btnCount)

    int btnCount();
public slots:
    void set_btnCount(int data);

signals:
    void changed_btnCount(int data);

private:
    int m_btnCount;
public:
    Model();
};

#endif // MODEL_H
