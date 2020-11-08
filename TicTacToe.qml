import QtQuick 2.0

Rectangle {
    id: rectangle
    width: parent.width
    height: parent.height
    color: "#eff0f5"

    property string slideInfo
    property int slideNumber

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
                onClicked: { Qt.quit(); }
            }
        }
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

                MouseArea {
                    anchors.fill: parent
                    onClicked: { mainWindow.showSlide(slideNumber-1); }
                }
            }

            Rectangle {
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

                MouseArea {
                    anchors.fill: parent
                    onClicked: { mainWindow.showSlide(slideNumber+1); }
                }
            }
        }

        Rectangle {
            height: parent.height
            width: 100;
            anchors.right: parent.right
            color: "#23395B"

            Text {
                text: slideInfo
                font.pixelSize: 25
                font.bold: true
                anchors.centerIn: parent
                color: "#406E8E"
            }
        }
    }

    Grid {
        id: tictactoe_grid
        width: parent.height*0.5
        height: parent.height*0.5
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        layer.mipmap: true
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 1
        spacing: 1
        rows: 3
        columns: 3
        transformOrigin: Item.Center

        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
        Rectangle { color: "lightgrey"; width: tictactoe_grid.width/3-1; height: tictactoe_grid.height/3-1 }
    }

    Rectangle {
        id: gamestatus
        y: parent.height*0.2
        width: parent.height*0.5
        height: 30
        color: "#eff0f5"
        anchors.left: tictactoe_grid.left
        anchors.horizontalCenter: parent.horizontalCenter
        enabled: false

        Text {
            id: text1
            text: qsTr("Player turn or winner announcement")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            font.pixelSize: 12
            anchors.leftMargin: 0
        }
    }

    Rectangle {
        id: newgame_button
        y: parent.height*0.8
        width: 100
        height: 30
        color: "darkgrey"
        anchors.left: tictactoe_grid.left
        enabled: true

        Text {
            id: text2
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'.AppleSystemUIFont'; font-size:13pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">New Game</p></body></html>"
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            textFormat: Text.RichText
            fontSizeMode: Text.Fit
            renderType: Text.NativeRendering
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
