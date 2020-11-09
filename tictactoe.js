var currentTurn = -1;

function isOdd(num) { return num % 2; }

function clickTile(texteditID, currentPlayer) {
    if(texteditID.length != 1 && currentTurn <= 9) {
        switch (isOdd(currentTurn)) {
            case 1:
                texteditID.clear();
                texteditID.append('O');
                gamestatus_text.clear();
                gamestatus_text.append("Waiting for Player Two");
                currentTurn++;
                break;
            case 0:
                texteditID.clear();
                texteditID.append('X');
                gamestatus_text.clear();
                gamestatus_text.append("Waiting for Player One");
                currentTurn++;
                break;
            default:
                gamestatus_text.clear();
                gamestatus_text.append("Please start a new game");
            }
    }
    if (currentTurn == 9) {
        gamestatus_text.clear();
        gamestatus_text.append("Please start a new game");
    }
}

function gameReset () {
    currentTurn = 0;

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
