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
                width: 182
                height: 37
                color: "#ffffff"
                text: qsTr("SIMULATOR-PAGE")
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 15
            }
        }


}


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/
