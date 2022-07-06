import QtQuick 2.15
import QtQuick.Window 2.15
import "controls"
import "pages"
import QtQuick.Controls 2.15


Window {
    id: window
    width: 1280
    height: 720
    visible: true
    color: "#202020"
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
        color: "#000000"
        border.color: "#131313"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        clip: false
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Mainmenu{
            id : mainmenu
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/HomePage.qml"))
            }


        }




        Community {
            id : community
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 75
            anchors.leftMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/CommunityPage.qml"))
            }
        }

         Livestream{
            id : livestream
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.leftMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/LivestreamPage.qml"))
            }
        }

        Config {
            id : config
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 225
            anchors.leftMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/ConfigPage.qml"))
            }
        }

        Simulator {
            id : simulator
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 300
            anchors.leftMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/SimulatorPage.qml"))
            }
        }

        Help {
            id : help
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 375
            anchors.leftMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl("pages/HelpPage.qml"))

            }
        }

        Setting{
            id : setting
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            onClicked: {

                stackView.push(Qt.resolvedUrl("pages/SettingsPage.qml"))
            }




        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        clip: true
        anchors.leftMargin: 50
        initialItem: Qt.resolvedUrl("pages/HomePage.qml")
    }





    }












/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:2}D{i:10}
}
##^##*/
