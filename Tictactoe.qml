import QtQuick 2.0
import "tictactoe.js" as TictactoeLogic

Slide {
    title: "Beispiel Tic Tac Toe"

    Column {
        width: parent.height - 400
        anchors.centerIn: parent
        spacing: 3

        Rectangle {
            id: gamestatus
            width: parent.width
            height: 70
            color: "#23395b"

            TextEdit {
                id: gamestatus_text
                width: parent.width
                height: parent.height
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 20
                font.bold: true
                color: "#eff0f5"
                readOnly: true
            }
        }

        Grid {
            id: tictactoe_grid
            width: parent.width
            height: parent.width
            spacing: 3
            rows: 3
            columns: 3

            Rectangle { id: tile_11
                        color: "lightgrey"; width: tictactoe_grid.width/3-2; height: tictactoe_grid.height/3-2
                        TextEdit { id: te_1; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 1}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_1, TictactoeLogic.currentPlayer); } } }
            Rectangle { id: tile_12
                        color: "lightgrey"; width: tictactoe_grid.width/3-2; height: tictactoe_grid.height/3-2
                        TextEdit { id: te_2; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 2}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_2, TictactoeLogic.currentPlayer);  } } }
            Rectangle { id: tile_3
                        color: "lightgrey"; width: tictactoe_grid.width/3-2; height: tictactoe_grid.height/3-2
                        TextEdit { id: te_3; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 3}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_3, TictactoeLogic.currentPlayer);  } } }
            Rectangle { id: tile_4
                        color: "lightgrey"; width: tictactoe_grid.width/3-2; height: tictactoe_grid.height/3-2
                        TextEdit { id: te_4; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 4}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_4, TictactoeLogic.currentPlayer);  } } }
            Rectangle { id: tile_5
                        color: "lightgrey"; width: tictactoe_grid.width/3-3; height: tictactoe_grid.height/3-3
                        TextEdit { id: te_5; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 5}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_5, TictactoeLogic.currentPlayer);  } } }
            Rectangle { id: tile_6
                        color: "lightgrey"; width: tictactoe_grid.width/3-3; height: tictactoe_grid.height/3-3
                        TextEdit { id: te_6; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 6}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_6, TictactoeLogic.currentPlayer);  } } }
            Rectangle { id: tile_7
                        color: "lightgrey"; width: tictactoe_grid.width/3-3; height: tictactoe_grid.height/3-3
                        TextEdit { id: te_7; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 7}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_7, TictactoeLogic.currentPlayer);  } } }
            Rectangle { id: tile_8
                        color: "lightgrey"; width: tictactoe_grid.width/3-3; height: tictactoe_grid.height/3-3
                        TextEdit { id: te_8; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 8}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_8, TictactoeLogic.currentPlayer); } } }
            Rectangle { id: tile_9
                        color: "lightgrey"; width: tictactoe_grid.width/3-3; height: tictactoe_grid.height/3-3
                        TextEdit { id: te_9; text: ""; font.pixelSize: parent.height*0.9; anchors.verticalCenter: parent.verticalCenter; anchors.horizontalCenter: parent.horizontalCenter; readOnly: true; property var tileNumber: 9}
                        MouseArea { anchors.fill: parent; onClicked: { TictactoeLogic.clickTile(te_9, TictactoeLogic.currentPlayer); } } }
        }

        Rectangle {
            id: newgame_button
            width: parent.width
            height: 70
            color: "darkgrey"

            Text {
                id: newgame_text
                anchors.centerIn: parent
                text: "New Game"
                font.bold: true
                font.pixelSize: 20
            }

            MouseArea { anchors.fill: parent; onClicked: { var newGame = TictactoeLogic.gameReset(); }}
        }

    }

    Component.onCompleted: TictactoeLogic.gameReset();
}

