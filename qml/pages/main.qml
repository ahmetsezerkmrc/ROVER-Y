import QtQuick 2.15
import QtQuick.Window 2.15
import "controls"


Window {
    id: window
    width: 1280
    height: 720
    visible: true
    color: "#1f1f1f"
    minimumHeight: 600
    minimumWidth: 750
    title: qsTr("ROVER-Y")


    Flow {
        id: flow1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 1
        anchors.leftMargin: 1
        anchors.bottomMargin: 1
        anchors.topMargin: 1
    }

    Rectangle {
        id: rectangle
        width: 50
        color: "#131313"
        border.color: "#131313"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 1
        anchors.leftMargin: 1
        anchors.topMargin: 50




        Community {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.leftMargin: 0
        }

         Livestream{
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.leftMargin: 0
        }

        Config {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 175
            anchors.leftMargin: 0
        }

        Simulator {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 250
            anchors.leftMargin: 0
        }

        Help {
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 325
            anchors.leftMargin: 0
        }

        Setting{
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0




        }
    }

    Rectangle {
        id: rectangle1
        height: 50
        color: "#131313"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 1
        anchors.leftMargin: 1
        anchors.topMargin: 1


        Mainmenu{
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.bottomMargin: 0


        }

        Portfinder{
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 100
            anchors.bottomMargin: 10
            anchors.topMargin: 10

        }

        CustomButton{

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
        anchors.leftMargin: 50

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
        anchors.leftMargin: 50
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
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:2}D{i:10}D{i:11}
D{i:12}D{i:9}D{i:14}D{i:15}D{i:16}D{i:13}D{i:19}D{i:20}D{i:18}D{i:17}
}
##^##*/
