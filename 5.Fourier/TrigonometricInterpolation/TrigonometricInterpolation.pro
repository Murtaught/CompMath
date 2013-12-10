TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

LIBS += -lginac -lcln

OTHER_FILES += \
    options.txt \
    DEMONSTRATE.sh

HEADERS += \
    utils.hpp \
    integral.hpp
