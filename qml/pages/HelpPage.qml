import QtQuick 2.15
import QtQuick.Controls 2.15
import"controls"

Item {



    Rectangle {
        id: rectangle3
        color: "#000000"
        anchors.fill: parent

        Rectangle {
            id: rectangle4
            color: "#202020"
            anchors.fill: parent

            Label {
                id: label
                color: "#ffffff"
                text: "HELP PAGE"
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 15
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }


}


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:3}D{i:2}D{i:1}
}
##^##*/
