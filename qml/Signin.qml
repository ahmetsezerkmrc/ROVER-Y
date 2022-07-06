import QtQuick 2.15
import QtQuick.Window 2.15
import "controls"
import "pages"
import QtQuick.Controls 2.15

Window {

    id: item2
    width: 380
    height: 580
    visible: true
    color: "#202020"
    maximumHeight: 580
    minimumWidth: 380
    minimumHeight: 580
    maximumWidth: 380

    Rectangle {
        id: screenbg
        color: "#202020"
        radius: 20
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        Label {
            id: label
            y: 8
            color: "#ffffff"
            text: qsTr("SIGN IN TO R-Y")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 1
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomTextField{
            id: emailinput
            width: 300
            height: 40
            anchors.top: parent.top
            placeholderText: "Name"
            colorOnFocus: "#606060"
            colorDefault: "#606060"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 75

        }

        Label {
            id: label1
            x: 72
            width: 134
            height: 19
            color: "#ffffff"
            text: qsTr("Enter your name :")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 50
            anchors.leftMargin: 30
            font.pointSize: 12
        }

        Label {
            id: label2
            width: 147
            height: 25
            color: "#ffffff"
            text: qsTr("Enter your surname :")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
            anchors.topMargin: 120
            anchors.leftMargin: 30
        }

        CustomTextField {
            id: surnameinput
            width: 300
            height: 40
            anchors.top: parent.top
            placeholderText: "Surname"
            colorDefault: "#606060"
            anchors.topMargin: 160
            anchors.horizontalCenter: parent.horizontalCenter
            colorOnFocus: "#606060"
        }

        Label {
            id: label3
            width: 147
            height: 25
            color: "#ffffff"
            text: qsTr("Enter your e-mail :")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
            anchors.topMargin: 200
            anchors.leftMargin: 30
        }

        CustomTextField {
            id: mailsigninput
            width: 300
            height: 40
            anchors.top: parent.top
            placeholderText: "e-mail"
            colorDefault: "#606060"
            anchors.topMargin: 230
            anchors.horizontalCenter: parent.horizontalCenter
            colorOnFocus: "#606060"
        }

        Label {
            id: label5
            width: 147
            height: 25
            color: "#ffffff"
            text: qsTr("Enter your password :")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
            anchors.topMargin: 270
            anchors.leftMargin: 30
        }

        CustomTextField {
            id: password1input
            width: 300
            height: 40
            anchors.top: parent.top
            placeholderText: "password"
            colorDefault: "#606060"
            anchors.topMargin: 300
            anchors.horizontalCenter: parent.horizontalCenter
            colorOnFocus: "#606060"
            echoMode: TextInput.Password
        }
        Label {
            id: label6
            width: 202
            height: 25
            color: "#ffffff"
            text: qsTr("Enter your password again :")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
            anchors.topMargin: 340
            anchors.leftMargin: 30
        }

        CustomTextField {
            id: password2input
            width: 300
            height: 40
            anchors.top: parent.top
            placeholderText: "password"
            colorDefault: "#606060"
            anchors.topMargin: 370
            anchors.horizontalCenter: parent.horizontalCenter
            colorOnFocus: "#606060"
            echoMode: TextInput.Password
        }

        CustomButton{
            id: signinbtn
            width: 163
            height: 42
            text: "Sign up"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: false
            font.pointSize: 15
            anchors.bottomMargin: 60
            anchors.rightMargin: 30

        }

        CheckBox {
            id: checkBox
            x: 30
            y: 416
            width: 292
            height: 18
            text: qsTr("Kullanım koşullarını kabul ediyorum")
        }
        CustomButton{
            id:backbtn
            x: 250
            y: 500
            width: 70
            height: 30
            text: "BACK"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            clip: true
            anchors.rightMargin: 30
            onClicked: {
                var component = Qt.createComponent("splashscreen.qml")
                var win1 = component.createObject()
                win1.show()
                visible = true
                close("item2")

            }
        }


    }
}




