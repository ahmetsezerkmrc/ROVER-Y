import QtQuick 2.15
import QtQuick.Controls 2.15
import"controls"

Item {



    Rectangle {
        id: rectangle3
        color: "#202020"
        anchors.fill: parent

        Rectangle {
            id: rectangle4
            height: 75
            color: "#000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top

            CustomTextField{
                id : textfield
                height: 50
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.right: parent.right
                colorOnFocus: "#181818"
                placeholderText: "SEARCH THE CODE"
                colorMouseOver: "#181818"
                colorDefault: "#f6131313"
                anchors.rightMargin: 212
                anchors.leftMargin: 100

            }
            CustomButton{
                text: qsTr("SEARCH")
                x: 500
                width: 90
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 50
                anchors.bottomMargin: 15
                anchors.topMargin: 15
                onClicked: {
                    backend.welcomeText(textfield.text)
                }

            }
        }

        Label {
            id: label
            x: 232
            y: 81
            width: 83
            height: 38
            color: "#ffffff"
            text: qsTr("Label")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 26
        }

        ScrollView {
            id: scrollView1
            anchors.fill: parent
            anchors.topMargin: 75
        }


}
    Connections{
        target: backend

        function onSetName(name){
            label.text = name
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:3}D{i:4}D{i:2}D{i:5}
D{i:6}D{i:1}D{i:7}
}
##^##*/
