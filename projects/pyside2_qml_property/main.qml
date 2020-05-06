import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0

Window {
    id: root
    
    width: 640
    height: 480
    visible: true
    title: "Hello Python World!"
    
    property int count: 0

    Text{
        x : 50
        y : 100
        text : "number : " + numberVal.ValueNumber
    }

    Button {
        x : 50
        y : 150
        text: "button"
        onClicked: {
            count = count + 1
            numberVal.set_number(count)
        }
    }
}
