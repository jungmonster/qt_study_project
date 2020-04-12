QT += quick

CONFIG += c++14

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# ts file 추가
TRANSLATIONS += lang_kr.ts \

# qm file 추가
OTHER_FILES += lang_kr.qm

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
