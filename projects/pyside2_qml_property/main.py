import sys
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QUrl
from PySide2.QtCore import QCoreApplication
from PySide2.QtCore import QObject, Signal, Slot, Property

class Number(QObject):
    __val = 0
    @Signal
    def numberChanged(self):
        pass

    @Slot(int)
    def set_number(self, val):
        print("setter func")
        self.__val = val
        self.numberChanged.emit()

    def get_number(self):
        print("getter func")
        return self.__val

    ValueNumber = Property(int, get_number, set_number, notify=numberChanged)

if __name__ == '__main__':  
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    number = Number()
    engine.rootContext().setContextProperty("numberVal", number)

    engine.load(QUrl("./main.qml"))
    
    if not engine.rootObjects():
        sys.exit(-1)
    
    sys.exit(app.exec_())