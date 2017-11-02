#include <QtCore/QCoreApplication>
#include "mylib.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    MyLib cLib;
    cLib.Test();

    return a.exec();
}
