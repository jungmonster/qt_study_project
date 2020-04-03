import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item{
        x : 0
        y : 0
        width: parent.width
        height: 50
        Button{
            id : button01
            x : 0
            y : 0
            width: 100
            height: 50
            text : "btn01"
            onClicked: {
                loader.source = "tab01.qml"
            }
        }

        Button{
            id : button02
            anchors.left : button01.right
            anchors.leftMargin: 25
            width: 100
            height: 50
            text : "btn02"
            onClicked: {
                loader.source = "tab02.qml"
            }
        }

        Button{
            id : button03
            anchors.left : button02.right
            anchors.leftMargin: 25
            width: 100
            height: 50
            text : "btn03"
            onClicked: {
                loader.source = "tab03.qml"
            }
        }
    }

    Loader{
        id: loader
        x : 0
        y : 100
        width: parent.width
        height: parent.height - 100
        source : "tab01.qml"
        onSourceChanged: animation.running = true
        NumberAnimation {
            id: animation
            target: loader.item
            property: "x"
            from: loader.width
            to : 0
            duration: 500
            easing.type: Easing.InExpo
        }
    }
}
