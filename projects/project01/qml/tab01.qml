import QtQuick 2.0

Item {
    id: tab01
    width: parent.width
    height: parent.height

    Text{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter:  parent.verticalCenter
        font.pixelSize: 30
        text: "Tab01"
    }

    Rectangle
    {
        anchors.fill: parent
        color: "blue"
        opacity: 0.3
    }

}
