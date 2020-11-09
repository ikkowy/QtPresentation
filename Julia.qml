import QtQuick 2.0
import QtQuick.Controls 2.12

Slide {
    title: "Beispiel Julia-Mengen"
    Image {
        width: parent.width
        height: parent.height - 100
        anchors.top: parent.top
        anchors.topMargin: 50
        source: "image://julia/0;0"

        Dialog {
            id: fileDialog
            title: "Bilddatei gespeichert"
            modal: true
            standardButtons: Dialog.Ok
            anchors.centerIn: parent

            onAccepted: {
                console.log("Speichere Datei unter: " + fileDialog.fileUrls)
            }
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                var re = 2 * mouseX / width - 1;
                var im = 2 * mouseY / height - 1;
                parent.source = "image://julia/" + re.toString() + ";" + im.toString();
            }

            onDoubleClicked: {
                fileDialog.open();
            }
        }
    }

    Rectangle {
        width: 50
        height: 50
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 200
        color: "#23395B"

        Image {
            width: 40
            height: 40
            anchors.centerIn: parent
            source: "qrc:/res/Diskette.svg"
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                fileDialog.open();
            }
        }
    }
}
