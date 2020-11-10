import QtQuick 2.0
import QtMultimedia 5.0

Slide {
    Column {
        width: parent.height - 100
        anchors.centerIn: parent
        spacing: 3

        Rectangle{
            anchors.fill : parent.fill
            height: 200
            width: 300
            color: "black"

            VideoOutput {
                id: root
                height: width
                source: mediaPlayer

                MediaPlayer {
                    id: mediaPlayer
                    source: "clip.mp4"
                    autoPlay: false
                }

            }
        }

        Rectangle {
            id: start_video_button
            width: parent.width
            height: 70
            color: "darkgrey"

            Text {
                id: newgame_text
                anchors.centerIn: parent
                text: "Start Video"
                font.bold: true
                font.pixelSize: 20
            }

            MouseArea { anchors.fill: parent; onClicked: { start(); }}
        }

    }

    function start() { mediaPlayer.play() }
    function stop() { mediaPlayer.stop() }
}

