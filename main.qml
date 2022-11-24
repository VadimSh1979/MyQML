//import QtQuick

//Window {
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Hello World")
//}


import QtQuick
import QtQuick.Controls

import TestClass 1.0

//window containing the application
ApplicationWindow {

    visible: true

    //title of the application
    title: qsTr("Hello World")
    width: 640
    height: 480

    Test{
        id: object
        someProperty: 10
    }

    //menu containing two menu items
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    //Content Area

    //a button in the middle of the content area
    Button {
        text: qsTr("Hello World: ") + object.text() + object.someProperty
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onClicked: {
            object.someProperty = object.someProperty + 10
        }
    }
}
