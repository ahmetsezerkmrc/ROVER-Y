import QtQuick 2.15
import QtQuick.Controls 2.15

Dial{
    id: roll
    width: 175
    height: 175


    background: Rectangle{
        id: rolli
        color: "transparent"

        Image {
            id: rollimg
            source: "resimler/svg_images/1dial.svg"
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
            x: roll.background.x + roll.background.width / 2 - width / 2
            y: roll.background.y + roll.background.height / 2 - height / 2

           Image {
                id: handleimg
                source: "resimler/svg_images/hand.svg"
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                height: 50
                width: 50

                fillMode: Image.PreserveAspectFit
            }

            antialiasing: true
            opacity: roll.enabled ? 1 : 0.3
            transform: [
                Translate {
                    y: -Math.min(roll.background.width, roll.background.height) * 0.4 + handleItem.height / 2
                },
                Rotation {
                    angle: roll.angle
                    origin.x: handleItem.width / 2
                    origin.y: handleItem.height / 2
                }
            ]
        }

        }

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/


