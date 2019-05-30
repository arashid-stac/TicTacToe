/*
* Project: Tic Tac Toe (Command Line)
* Author: Alli Rashid
* v1.0
*/

import Swift
import Foundation
print("Welcome to the game of the century!")

var gameOver:Bool = false;
var testEmptyArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

func displayResult() {
    //Print out the result of the round
    for i in 0..<9 {
        if (i==2 || i==5) {
            print(testEmptyArray[i])
        } else {
            print (testEmptyArray[i], terminator: " ")
        }
    }
    print("\n")
}

func isVacant(spot: Int) ->Bool {
    //Check if position is vacant
    if (testEmptyArray[spot] != "X" && testEmptyArray[spot] != "O") {
        return true
    } else {
        return false
    }
}

func checkForTie() {
    /*
    *If all the spots have been filled, and there's still no victor
    *it is a tie
    */
    if (isVacant(spot: 0) != true && isVacant(spot: 1) != true
        && isVacant(spot: 2) != true && isVacant(spot: 3) != true
        && isVacant(spot: 4) != true && isVacant(spot: 5) != true
        && isVacant(spot: 6) != true && isVacant(spot: 7) != true
        && isVacant(spot: 8) != true) {
        gameOver = true
        print("\nTIE!")
    }
}

func iPlay() {
    var checkStatus:Bool = true
    /*
    *Ask user to pick position
    *If user enters invalid input, ask again
    */
    while (checkStatus == true) {
        print("\nSelect position you wanna fill\n")
        displayResult()
        let position = readLine()
        let indexOfPosition = testEmptyArray.index(of: position!)
        if (indexOfPosition == nil) {
            print("Invalid input! Pick again.")
            displayResult()
        } else {
            testEmptyArray[indexOfPosition!] = "X"
            print("RESULT: \n")
            checkStatus = false
        }
    }
}

func checkIfPlayerWins() {
    if ((testEmptyArray[0] == "X") && (testEmptyArray[1] == "X") && (testEmptyArray[2] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[0] == "X") && (testEmptyArray[3] == "X") && (testEmptyArray[6] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[0] == "X") && (testEmptyArray[4] == "X") && (testEmptyArray[8] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[1] == "X") && (testEmptyArray[4] == "X") && (testEmptyArray[7] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[2] == "X") && (testEmptyArray[5] == "X") && (testEmptyArray[8] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[2] == "X") && (testEmptyArray[4] == "X") && (testEmptyArray[6] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[3] == "X") && (testEmptyArray[4] == "X") && (testEmptyArray[5] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    } else if ((testEmptyArray[6] == "X") && (testEmptyArray[7] == "X") && (testEmptyArray[8] == "X")) {
        gameOver = true
        print("\nPlayer WINS!")
    }
}

func computerPlays() {
    print("\nComputer's turn...")

    //win here
    if (((testEmptyArray[0] == "O") && (testEmptyArray[1] == "O")) && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[1] == "O") && (testEmptyArray[2] == "O")) && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[0] == "O") && (testEmptyArray[2] == "O")) && isVacant(spot: 1)==true) {
        testEmptyArray[1] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[0] == "O") && (testEmptyArray[3] == "O")) && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[6] == "O") && (testEmptyArray[3] == "O")) && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[6] == "O") && (testEmptyArray[0] == "O")) && isVacant(spot: 3)==true) {
        testEmptyArray[3] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[0] == "O") && (testEmptyArray[4] == "O")) && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[0] == "O") && (testEmptyArray[8] == "O")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[8] == "O") && (testEmptyArray[4] == "O")) && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[1] == "O") && (testEmptyArray[4] == "O")) && isVacant(spot: 7)==true) {
        testEmptyArray[7] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[1] == "O") && (testEmptyArray[7] == "O")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[7] == "O") && (testEmptyArray[4] == "O")) && isVacant(spot: 1)==true) {
        testEmptyArray[1] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[2] == "O") && (testEmptyArray[5] == "O")) && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[2] == "O") && (testEmptyArray[8] == "O")) && isVacant(spot: 5)==true) {
        testEmptyArray[5] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[5] == "O") && (testEmptyArray[8] == "O")) && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[2] == "O") && (testEmptyArray[4] == "O")) && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[2] == "O") && (testEmptyArray[6] == "O")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[4] == "O") && (testEmptyArray[6] == "O")) && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[3] == "O") && (testEmptyArray[4] == "O")) && isVacant(spot: 5)==true) {
        testEmptyArray[5] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[3] == "O") && (testEmptyArray[5] == "O")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[4] == "O") && (testEmptyArray[5] == "O")) && isVacant(spot: 3)==true) {
        testEmptyArray[3] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[6] == "O") && (testEmptyArray[7] == "O")) && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[6] == "O") && (testEmptyArray[8] == "O")) && isVacant(spot: 7)==true) {
        testEmptyArray[7] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } else if (((testEmptyArray[7] == "O") && (testEmptyArray[8] == "O")) && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
        gameOver = true
        print("\nCOMPUTER WINS!")
    } 

    //block here
    else if (((testEmptyArray[0] == "X") && (testEmptyArray[1] == "X")) && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
    } else if (((testEmptyArray[1] == "X") && (testEmptyArray[2] == "X")) && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
    }else if (((testEmptyArray[0] == "X") && (testEmptyArray[2] == "X")) && isVacant(spot: 1)==true) {
        testEmptyArray[1] = "O"
    } else if (((testEmptyArray[0] == "X") && (testEmptyArray[3] == "X")) && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
    } else if (((testEmptyArray[6] == "X") && (testEmptyArray[3] == "X")) && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
    } else if (((testEmptyArray[6] == "X") && (testEmptyArray[0] == "X")) && isVacant(spot: 3)==true) {
        testEmptyArray[3] = "O"
    } else if (((testEmptyArray[0] == "X") && (testEmptyArray[4] == "X")) && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
    } else if (((testEmptyArray[0] == "X") && (testEmptyArray[8] == "X")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
    } else if (((testEmptyArray[8] == "X") && (testEmptyArray[4] == "X")) && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
    } else if (((testEmptyArray[1] == "X") && (testEmptyArray[4] == "X")) && isVacant(spot: 7)==true) {
        testEmptyArray[7] = "O"
    } else if (((testEmptyArray[1] == "X") && (testEmptyArray[7] == "X")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
    } else if (((testEmptyArray[7] == "X") && (testEmptyArray[4] == "X")) && isVacant(spot: 1)==true) {
        testEmptyArray[1] = "O"
    } else if (((testEmptyArray[2] == "X") && (testEmptyArray[5] == "X")) && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
    } else if (((testEmptyArray[2] == "X") && (testEmptyArray[8] == "X")) && isVacant(spot: 5)==true) {
        testEmptyArray[5] = "O"
    } else if (((testEmptyArray[5] == "X") && (testEmptyArray[8] == "X")) && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
    } else if (((testEmptyArray[2] == "X") && (testEmptyArray[4] == "X")) && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
    } else if (((testEmptyArray[2] == "X") && (testEmptyArray[6] == "X")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
    } else if (((testEmptyArray[4] == "X") && (testEmptyArray[6] == "X")) && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
    } else if (((testEmptyArray[3] == "X") && (testEmptyArray[4] == "X")) && isVacant(spot: 5)==true) {
        testEmptyArray[5] = "O"
    } else if (((testEmptyArray[3] == "X") && (testEmptyArray[5] == "X")) && isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
    } else if (((testEmptyArray[4] == "X") && (testEmptyArray[5] == "X")) && isVacant(spot: 3)==true) {
        testEmptyArray[3] = "O"
    } else if (((testEmptyArray[6] == "X") && (testEmptyArray[7] == "X")) && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
    } else if (((testEmptyArray[6] == "X") && (testEmptyArray[8] == "X")) && isVacant(spot: 7)==true) {
        testEmptyArray[7] = "O"
    } else if (((testEmptyArray[7] == "X") && (testEmptyArray[8] == "X")) && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
    } 

    //if all corners are empty, play corner
    else if ((isVacant(spot: 0)==true) && (isVacant(spot: 2)==true) &&
    (isVacant(spot: 6)==true) && (isVacant(spot: 8)==true)) {
        //play first corner
        testEmptyArray[0] = "O"
    }

    //if player played a corner and the center is empty, play center
    else if (((isVacant(spot: 0)==false) || (isVacant(spot: 2)==false) || 
    (isVacant(spot: 6)==false) || (isVacant(spot: 8)==false)) && isVacant(spot: 4)==true) {
        //play center
        testEmptyArray[4] = "O"
    }

    //play opposite corner
    else if (testEmptyArray[0] == "X" && isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
    } else if (testEmptyArray[6] == "X" && isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
    } else if (testEmptyArray[2] == "X" && isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
    } else if (testEmptyArray[8] == "X" && isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
    }

    //play empty corner
    else if (isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
    } else if (isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
    } else if (isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
    } else if (isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
    }

    //play empty side
    else if (isVacant(spot: 0)==true) {
        testEmptyArray[0] = "O"
    } else if (isVacant(spot: 1)==true) {
        testEmptyArray[1] = "O"
    } else if (isVacant(spot: 2)==true) {
        testEmptyArray[2] = "O"
    } else if (isVacant(spot: 3)==true) {
        testEmptyArray[3] = "O"
    } else if (isVacant(spot: 4)==true) {
        testEmptyArray[4] = "O"
    } else if (isVacant(spot: 5)==true) {
        testEmptyArray[5] = "O"
    } else if (isVacant(spot: 6)==true) {
        testEmptyArray[6] = "O"
    } else if (isVacant(spot: 7)==true) {
        testEmptyArray[7] = "O"
    } else if (isVacant(spot: 8)==true) {
        testEmptyArray[8] = "O"
    }
    print("RESULT:\n")
}

func playGame() {
    var checkStatus: Bool = true
    print("\n Go first or second?\n1) First\n2) Second")
    var iStart = readLine()
    var iStartInt = Int(iStart!)
    while (checkStatus == true) {
        iStart = readLine()
        iStartInt = Int(iStart!)
        if (iStartInt == 1 && iStartInt != 2) {
            checkStatus = false
        } else if (iStartInt != 1 && iStartInt == 2) {
            checkStatus = false
        } else {
            print("Invalid input! Select again please.\n")
            print("\n Go first or second?\n1) First\n2) Second")
        }
    }

    while gameOver==false {
        /*
        *Player is X
        *Computer is O
        */

        /*
        *If player inputs 1, they go first
        *else if they input 2, they go second
        *else if they input an invalid character
        *they have to input again
        */
        if (iStartInt != 1 && iStartInt == 2) {
            computerPlays()
            checkForTie()
            displayResult()
            if (gameOver==true) {
                break
            }
            iPlay()
            checkForTie()
            checkIfPlayerWins()
            displayResult()
            if (gameOver==true) {
                break
            }
        } else if (iStartInt != 2 && iStartInt == 1) {
            iPlay()
            checkForTie()
            checkIfPlayerWins()
            displayResult()
            if (gameOver==true) {
                break
            }
            computerPlays()
            checkForTie()
            displayResult()
            if (gameOver==true) {
                break
            }
        } else {
            print ("invalid input!")
        }
    }
}

func rematch() -> Bool {
    var checkStatus: Bool = true
    print("Would you like a rematch?\n1) Yes\n2) No")
    /*
    *If user enters 1, then return true for the rematch
    *if user enters 2, then return false for the rematch
    *if user inputs invalid character, ask for input again
    */
    while (checkStatus == true) {
        let response = readLine()
        let responseInt = Int(response!)
        if (responseInt == 1 && responseInt != 2) {
            checkStatus = false
            return true
        } else if (responseInt != 1 && responseInt == 2) {
            checkStatus = false
            return false
        } else {
            print("Invalid input! Select again please.\n")
            print("Would you like a rematch?\n1) Yes\n2) No")
        }
    }
}

var keepPlaying: Bool = true
/*
*Keep playing until the game is over and the user does not want to rematch
*/
while (keepPlaying == true) {
    playGame()
    if (rematch() != true) {
        exit(0)
    } else {
        gameOver = false
        testEmptyArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
    }
}