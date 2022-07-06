import QtQuick 2.15
import QtQuick.Controls 2.15


Dial{
    id: yaw
    width: 175
    height: 175


    background: Rectangle{
        id: yawbtn
        color: "transparent"
        width: 175
        height: 175


        Image {
            id: yawimg
            source: "resimler/svg_images/2.svg"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 175
            width: 175

            fillMode: Image.PreserveAspectFit
        }

    }
    handle: Rectangle {
            id: handleItem
            x: yaw.background.x + yaw.background.width / 2 - width / 2
            y: yaw.background.y + yaw.background.height / 2 - height / 2

           Image {
               id: handleimg
               x: -90
               y: -18
               width: 175
               height: 175
               source: "resimler/avion.png"
               rotation: 140



               fillMode: Image.PreserveAspectFit
            }

            antialiasing: true
            opacity: yaw.enabled ? 1 : 0.3
            transform: [
                Translate {
                    y: -Math.min(yaw.background.width, yaw.background.height) * 0.4 + handleItem.height / 2
                },
                Rotation {
                    angle: yaw.angle
                    origin.x: handleItem.width
                    origin.y: handleItem.height
                }
            ]
        }
    Connections{
        target: backend

        function onsetdatayaw(datayaw){
            handleimg.rotation = datayaw
        }
    }





    }






/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:4}
}
##^##*/


