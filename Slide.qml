import QtQuick 2.0

Rectangle {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: 50
        color: "#161925"

        Rectangle {
            width: parent.height
            height: parent.height
            anchors.right: parent.right
            color: "#23395B"

            Text {
                text: "✖"
                font.pixelSize: 40
                anchors.centerIn: parent
                color: "#406E8E"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: Qt.quit()
            }
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height - 100
        anchors.top: parent.top
        anchors.topMargin: 50
        color: "#eff0f5"
    }

    Rectangle {
        width: parent.width
        height: 50
        color: "#161925"
        anchors.bottom: parent.bottom

        Row {
            spacing: 50
            height: parent.height

            Rectangle {
                id: prev
                width: parent.height
                height: parent.height
                color: "#23395B"

                Text {
                    text: "◀"
                    font.pixelSize: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    color: "#406E8E"
                }
            }

            Rectangle {
                id: next
                width: parent.height
                height: parent.height
                color: "#23395B"

                Text {
                    text: "▶"
                    font.pixelSize: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    color: "#406E8E"
                }
            }
        }

        Rectangle {
            height: parent.height
            width: 100;
            anchors.right: parent.right
            color: "#23395B"

            Text {
                text: "1/1"
                font.pixelSize: 25
                font.bold: true
                anchors.centerIn: parent
                color: "#406E8E"
            }
        }
    }
}
