import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text{
        x : 100
        y : 100
        font.pixelSize: 30
        text : "" + Model.btnCount
    }

    Button {
        x : 100
        y : 200
        text: "button"
        onClicked: {
            Controls.click_btn()
        }
    }
}
