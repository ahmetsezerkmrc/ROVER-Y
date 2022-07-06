import QtQuick 2.15
import QtQuick.Controls 2.15
import"controls"

Item {
    Rectangle {
        id: rectangle1
        height: 50
        color: "#131313"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Portfinder{
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 100
            anchors.bottomMargin: 10
            anchors.topMargin: 10

        }

        CustomButton{
            text: qsTr("CONNECT")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.rightMargin: 10

        }
    }


    Rectangle {
        id: rectangle2
        y: 520
        height: 200
        color: "#202020"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0

        anchors.bottomMargin: 0
        anchors.rightMargin: 0

        Yawdial {
            anchors.left: parent.left
            anchors.top: parent.top
            wheelEnabled: false
            anchors.topMargin: 0
            anchors.leftMargin: 0

        }

        Pitchdial {
            width: 175
            height: 175
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.leftMargin: 175
        }

        Rolldial {
            width: 175
            height: 175
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.leftMargin: 350
        }


    }

    Rectangle {
        id: rectangle3
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 200
        anchors.leftMargin: 0
        anchors.topMargin: 50

        Rectangle {
            id: rectangle4
            color: "#b44242"
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
        }

        Rectangle {
            id: rectangle5
            color: "#415ddd"
            anchors.left: parent.horizontalCenter
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }
}


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:3}D{i:1}D{i:5}D{i:6}D{i:7}D{i:4}
D{i:9}D{i:10}D{i:8}
}
##^##*/
