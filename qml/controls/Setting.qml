import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15


Button{
    id: setting


    property color colorDefault: "#606060"
    property color colorMouseOver: "#A0A0A0"
    property color colorPressed: "#0080FF"

    implicitWidth: 50
    implicitHeight: 50




    QtObject{
        id:internal
        property var dynamicColor: if(setting.down){
                                       setting.down ? colorPressed : colorDefault
                                   }else{
                                       setting.hovered ? colorMouseOver : colorDefault
                                   }
    }




    background: Rectangle{
        id: settingbtn
        color: internal.dynamicColor
        radius: 15

        Image {
            id: settingimg
            source: "resimler/svg_images/icons8-settings.svg"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 30
            width: 30

            fillMode: Image.PreserveAspectFit
        }
        ColorOverlay{

        }



    }

        }

/*##^##
Designer {
    D{i:0;formeditorZoom:10}D{i:1}
}
##^##*/
