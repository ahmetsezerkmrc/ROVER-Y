import QtQuick 2.15
import QtQuick.Window 2.15
import "controls"
import "pages"
import QtQuick.Controls 2.15




Window {

    id: itemi
    width: 380
    height: 580
    visible: true
    color: "#202020"
    maximumHeight: 580
    minimumWidth: 380
    minimumHeight: 580
    maximumWidth: 380
    title: qsTr("ROVER-Y")






    Rectangle{
        id: rectangle

        color: "#202020"
        anchors.fill: parent



        Image {
            id: image
            width: 260
            height: 160
            anchors.top: parent.top
            source: "controls/resimler/logo.svg"
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        Label {
            id: label
            width: 242
            height: 24
            color: "#ffffff"
            text: qsTr("LOGIN ROVER-Y")
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 20
            anchors.horizontalCenterOffset: 0
            anchors.topMargin: 235
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: label1
            width: 197
            height: 21
            color: "#ff0000"
            text: qsTr("")
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 12
            anchors.horizontalCenterOffset: 0
            anchors.topMargin: 260
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: label2
            width: 64
            height: 24
            color: "#0080ff"
            text: qsTr("Email : ")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 14
            anchors.leftMargin: 59
            anchors.topMargin: 290
        }
        CustomTextField{
            id: textfieldemail
            height: 30
            text: ""
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            placeholderText: "ENTER YOUR EMAIL"
            placeholderTextColor: "#4891d9"
            colorMouseOver: "#303030"
            colorOnFocus: "#606060"
            colorDefault: "#404040"
            anchors.rightMargin: 60
            anchors.leftMargin: 60
            anchors.topMargin: 330

        }
        Label {
            id: label3
            width: 205
            height: 30
            color: "#0080ff"
            text: qsTr("Password : ")
            anchors.left: parent.left
            anchors.top: parent.top
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 14
            anchors.leftMargin: 59
            anchors.topMargin: 370
        }
        CustomTextField{
            id: textfieldpassword
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            placeholderText: " ENTER YOUR PASSWORD"
            placeholderTextColor: "#4891d9"
            colorMouseOver: "#232020"
            colorOnFocus: "#2a2323"
            colorDefault: "#404040"
            anchors.rightMargin: 60
            anchors.leftMargin: 60
            anchors.topMargin: 410
            echoMode: TextInput.Password

        }
        CustomButton{
            id:btn
            y: 500
            height: 30
            text: "LOGIN IN"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 60
            clip: true
            anchors.bottomMargin: 90
            anchors.rightMargin: 60
            onClicked: {
                backend.recister(textfieldemail.text,textfieldpassword.text)

                if(label1.text === ":)"){
                    var component = Qt.createComponent("main.qml")
                    var win = component.createObject()
                    win.show()
                    visible = true
                    close("itemi")

                }

            }




}
        CustomButton{
            id:signbtn
            x: 250
            y: 500
            width: 70
            height: 30
            text: "SIGN IN"
            anchors.right: parent.right
            clip: true
            anchors.rightMargin: 60
            onClicked:{
                var component = Qt.createComponent("Signin.qml")
                var win = component.createObject()
                win.show()
                visible = true
                close("itemi")

        }
        }
        Connections{
            target: backend

            function onSetLogin(email){
                label1.text = email
            }
        }






}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:1}
}
##^##*/
}
