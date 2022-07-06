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
                source: "resimler/svg_images/hand.svg"
                anchors.verticalCenterOffset: 50
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                height: 50
                width: 50

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




    }






/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/


