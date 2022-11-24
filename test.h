#ifndef TEST_H
#define TEST_H

#include <QObject>

class TestClass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int someProperty READ getSomeProperty WRITE setSomeProperty NOTIFY somePropertyChanged)
public:
    explicit TestClass(QObject *parent = 0);
    int getSomeProperty()const;
    void setSomeProperty(const int &);

    Q_INVOKABLE QString text() const;
private:
    int someProperty = 123;
signals:
    void somePropertyChanged();
public slots:
};

#endif // TEST_H
