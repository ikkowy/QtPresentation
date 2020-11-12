import QtQuick 2.0
import QtMultimedia 5.0

Slide {
    title: "Beispiel Multimedia"

    Column {
        width: 400
        anchors.centerIn: parent

        Rectangle {
            height: parent.width
            width: parent.width
            color: "black"

            Video {
                id: video
                anchors.fill: parent
                source: "qrc:/clip.avi"
            }
        }

        Rectangle {
            id: start_video_button
            width: parent.width
            height: 70
            color: "darkgrey"

            Text {
                anchors.centerIn: parent
                text: "Start Video"
                font.bold: true
                font.pixelSize: 20
            }

            MouseArea { anchors.fill: parent; onClicked: { video.play(); }}
        }
    }
}

