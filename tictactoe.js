var currentTurn = -1;

var winConditions = [
            [1,2,3],[4,5,6],[7,8,9],
            [1,4,7],[2,5,8],[3,6,9],
            [1,5,9],[3,5,7]];

var playerOne = [];
var playerTwo = [];

var gameEnd = false;

function isOdd(num) { return num % 2; }

function numericSort(a, b){return a - b};

function clickTile(texteditID, currentPlayer) {
    if(texteditID.length != 1 && currentTurn <= 9 && !gameEnd) {
        switch (isOdd(currentTurn)) {
        case 0:
            texteditID.append('X');
            playerOne.push(texteditID.tileNumber);
            if(checkWinCondition(playerOne)){ break;}
            else {
                gamestatus_text.clear();
                gamestatus_text.append("Waiting for Player Two");
                currentTurn++;
            }
            break;
        case 1:
            texteditID.append('O');
            playerTwo.push(texteditID.tileNumber);
            if(checkWinCondition(playerTwo)){ break;}
            else {
                gamestatus_text.clear();
                gamestatus_text.append("Waiting for Player One");
                currentTurn++;
            }
            break;
        default:
            gamestatus_text.clear();
        }
    }
    if (currentTurn == 9 && !gameEnd) {
        gameEnd = true;
        gamestatus_text.clear();
        gamestatus_text.append("It's a draw!\nPlease start a new game");
    }
}

function checkWinCondition (array) {
    for (var i = 0; i< 8; i++) {
        if (array.includes(winConditions[i][0]) && array.includes(winConditions[i][1]) && array.includes(winConditions[i][2])) {
            gameEnd = true;
            gamestatus_text.clear();
            if (isOdd(currentTurn)) {
                gamestatus_text.append("Player One wins!");
                gamestatus_text.append("Please start a new game");

            }
            else {
                gamestatus_text.append("Player Two wins!");
                gamestatus_text.append("Please start a new game");

            }
            currentTurn = 10;
            gameEnd = true;
        }
    }
    return gameEnd;
}


function gameReset () {
    currentTurn = 0;
    playerOne = [];
    playerTwo = [];
    gameEnd = false;

    te_1.clear();
    te_2.clear();
    te_3.clear();
    te_4.clear();
    te_5.clear();
    te_6.clear();
    te_7.clear();
    te_8.clear();
    te_9.clear();

    gamestatus_text.clear();
    gamestatus_text.append("Waiting for Player One");
}
