import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        anchors.fill: parent
        color: "red"

    }

    Item{
        anchors.fill: parent

        Rectangle{
            id : r1
            width: 100
            height: 100
            color : "yellow"
        }

        Rectangle
        {
            id : r2
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            color: "blue"
        }

        Rectangle{
            id : r3
            width: 100
            height: 100
            anchors.bottom: r2.verticalCenter
            anchors.left : r2.right
            color: "blue"
            border.color: "black"
        }

        Rectangle{
            id : r4
            width: 100
            height: 100
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }

            color: "white"
            border.color: "black"
        }

        Rectangle{
            id : r5
            width : 100
            height: 100
            anchors{
                top: r4.bottom
                left: r4.horizontalCenter
            }
            color : "green"
            border.color: "black"
        }
    }
}
