TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp

LIBS += -lginac -lcln

HEADERS += \
    utils.hpp

OTHER_FILES += \
    plot.gp \
    options.txt

