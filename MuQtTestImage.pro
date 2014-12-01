#-------------------------------------------------
#
# Project created by QtCreator 2014-12-01T09:03:52
#
#-------------------------------------------------

QT       += core gui
TARGET = MuQtTestImage
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app
INCLUDEPATH += $$PWD/mu/include
LIBS += -L$$PWD/mu/lib -llibmupdf -llibthirdparty

SOURCES += main.cpp

include (muqt/muqt.pri)
