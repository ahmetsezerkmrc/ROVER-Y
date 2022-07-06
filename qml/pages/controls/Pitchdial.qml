import QtQuick 2.15
import QtQuick.Controls 2.15

Dial{
    id: pitch
    width: 175
    height: 175


    background: Rectangle{
        id: pitchdial
        color: "transparent"

        Image {
            id: pitchimg
            source: "resimler/firstdial.png"
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
            x: pitch.background.x + pitch.background.width / 2 - width / 2
            y: pitch.background.y + pitch.background.height / 2 - height / 2

           Image {
                id: handleimg
                source: "resimler/svg_images/hand.svg"
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                height: 30
                width: 30

                fillMode: Image.PreserveAspectFit
            }

            antialiasing: true
            opacity: pitch.enabled ? 1 : 0.3
            transform: [
                Translate {
                    y: -Math.min(pitch.background.width, pitch.background.height) * 0.4 + handleItem.height / 2
                },
                Rotation {
                    angle: pitch.angle
                    origin.x: handleItem.width
                    origin.y: handleItem.height
                }
            ]
        }

        }

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/


