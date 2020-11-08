import QtQuick 2.0

Slide {
    title: "Beispiel Julia-Mengen"
    Image {
        width: parent.width
        height: parent.height - 100
        anchors.top: parent.top
        anchors.topMargin: 50
        source: "image://julia/0;0"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                var re = 2 * mouseX / width - 1;
                var im = 2 * mouseY / height - 1;
                parent.source = "image://julia/" + re.toString() + ";" + im.toString();
            }
        }
    }
}
