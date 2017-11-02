#-------------------------------------------------
#
# Project created by QtCreator 2011-10-20T19:59:06
#
#-------------------------------------------------

QT       -= gui

TARGET = MyLib
TEMPLATE = lib

DEFINES += MYLIB_LIBRARY

SOURCES += mylib.cpp

HEADERS += mylib.h\
        MyLib_global.h

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE25FEA3D
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = MyLib.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
