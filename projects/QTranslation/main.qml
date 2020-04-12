import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        id: txt01
        x : 300
        y : 200
        font.pixelSize: 40
        text: qsTr("Text")
    }
}
