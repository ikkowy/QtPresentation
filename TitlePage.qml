import QtQuick 2.0

Slide {
    Column {
        width: parent.width
        anchors.verticalCenter: parent.verticalCenter
        spacing: 50

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Berufsakademie Sachsen - Staatliche Studienakademie Leipzig"
            font.pixelSize: 30
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Anwendungsentwicklung in C++ unter\n Verwendung des Qt Frameworks"
            font.pixelSize: 50
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Lan Eva Nguyen, Vincent Westenberg"
            font.pixelSize: 30
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "12. November 2020"
            font.pixelSize: 35
        }
    }
}
