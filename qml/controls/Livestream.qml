import QtQuick 2.15
import QtQuick.Controls 2.15

Button{
    id: liveicon

    implicitWidth: 50
    implicitHeight: 50

    property color colorDefault: "#606060"
    property color colorMouseOver: "#A0A0A0"
    property color colorPressed: "#0080FF"


    QtObject{
        id:internal
        property var dynamicColor: if(liveicon.down){
                                       liveicon.down ? colorPressed : colorDefault
                                   }else{
                                       liveicon.hovered ? colorMouseOver : colorDefault
                                   }
    }




    background: Rectangle{
        id: livebtn
        color: internal.dynamicColor
        radius: 15

        Image {
            id: liveimg
            source: "resimler/svg_images/icons8-zoom.svg"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: -1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 30
            width: 30

            fillMode: Image.PreserveAspectFit
        }

    }

        }

/*##^##
Designer {
    D{i:0;formeditorZoom:10}
}
##^##*/
