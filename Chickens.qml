import QtQuick 2.0

Slide {
    title: "Beispiel Hühnchen"

    Row {
        anchors.centerIn: parent
        spacing: 100

        Image {
            source: "qrc:/chicken.png"
            width: 100
            height: 111

            MouseArea {
                anchors.fill: parent
                onClicked: parent.visible = false
            }
        }

        Image {
            source: "qrc:/chicken.png"
            width: 100
            height: 111

            MouseArea {
                anchors.fill: parent
                onDoubleClicked: parent.visible = false
            }
        }

        Image {
            source: "qrc:/chicken.png"
            width: 100
            height: 111

            MouseArea {
                anchors.fill: parent
                onPressAndHold: parent.visible = false
            }
        }
    }
}
