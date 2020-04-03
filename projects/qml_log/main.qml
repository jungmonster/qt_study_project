import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component.onCompleted: {
        console.log("Window Completed")
    }

    Item{
        id : item01
        x : 100
        y : 100

        Component.onCompleted: {
            console.log("item 01 Completed")
        }

//        Rectangle{
//            id: blue01
//            width: 100
//            height: 100
//            color: "blue"
//            Component.onCompleted: {
//                console.log("blue01 Rectangle Completed")
//            }
//        }

//        Rectangle{
//            id: blue02
//            y: 200
//            width: 100
//            height: 100
//            color: "blue"
//            Component.onCompleted: {
//                console.log("blue02 Rectangle Completed")
//            }
//        }

        Item {
            id: item02
            x : 100
            y : 100

            Rectangle{
                id:rect
                width: 100
                height: 100
                color: "red"
                Component.onCompleted: {
                    console.log("Rectangle Completed")
                }
            }
            Component.onCompleted: {
                console.log("item 02 Completed")
            }
        }

        Rectangle{
            id: blue01
            width: 100
            height: 100
            color: "blue"
            Component.onCompleted: {
                console.log("blue01 Rectangle Completed")
            }
        }

        Rectangle{
            id: blue02
            y: 200
            width: 100
            height: 100
            color: "blue"
            Component.onCompleted: {
                console.log("blue02 Rectangle Completed")
            }
        }
    }
}
