import QtQuick 2.0

Item {
    id: tab02
    width: parent.width
    height: parent.height

    Text{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter:  parent.verticalCenter
        font.pixelSize: 30
        text: "Tab02"
    }

    Rectangle
    {
        anchors.fill: parent
        color: "red"
        opacity: 0.3
    }

}
