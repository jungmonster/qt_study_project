import QtQuick 2.0

Item {
    id: tab03
    width: parent.width
    height: parent.height

    Text{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter:  parent.verticalCenter
        font.pixelSize: 30
        text: "Tab03"
    }

    Rectangle
    {
        anchors.fill: parent
        color: "Green"
        opacity: 0.3
    }

}
