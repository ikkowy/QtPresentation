import QtQuick 2.0

Slide {
    Column {
        width: parent.height-100
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: parent.height*0.04

        Rectangle {
            id: gamestatus
            width: parent.width*0.5
            height: 30
            color: "#eff0f5"

            Text {
                id: gamestatus_text
                text: qsTr("Player turn or winner announcement")
                font.pixelSize: 20
            }
        }

        Grid {
            id: tictactoe_grid
            width: parent.height*0.8
            height: parent.height*0.8
            spacing: 1
            rows: 3
            columns: 3

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
            id: newgame_button
            width: 100
            height: 30
            color: "darkgrey"

            Text {
                id: newgame_text
                text: "New Game"
                font.pixelSize: 20
            }
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
