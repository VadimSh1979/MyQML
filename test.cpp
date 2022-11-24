#include "test.h"

TestClass::TestClass(QObject *parent) : QObject(parent)
{

}

int TestClass::getSomeProperty()const
{
    return someProperty;
}
void TestClass::setSomeProperty(const int &i)
{
    someProperty = i;
    emit somePropertyChanged();
}

QString TestClass::text() const
{
    return "Lalala";
}
