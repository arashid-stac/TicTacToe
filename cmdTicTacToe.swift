/*
* Project: Unbeatable Tic Tac Toe (Command Line)
* Author: Alli Rashid
* v1.0
*/


import Swift
print("Welcome to the game of the century!\nYou go first.")

var gameOver:Bool = false;
var testNumber: Int = 0;

var testEmptyArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

while gameOver==false {
    //player = x
    //bot = o

    func endGameResult() {
        for i in 0..<9 {
            if (i==2 || i==5) {
                print(testEmptyArray[i])
            } else {
                print (testEmptyArray[i], terminator: " ")
            }
        }
    }

    endGameResult()

    func isVacantForPlayer(spot: Int, input: String) ->Bool {
        let spot = testEmptyArray.index(of: input)
        if (testEmptyArray[spot!] != "x" && testEmptyArray[spot!] != "o") {
            return true
        } else {
            return false
        }
    }

    func isVacantForComputer(spot: Int) ->Bool {
        //let spot = testEmptyArray.index(of: input)
        if (testEmptyArray[spot] != "x" && testEmptyArray[spot] != "o") {
            return true
        } else {
            return false
        }
    }

    if (isVacantForComputer(spot: 0) != true && isVacantForComputer(spot: 1) != true
    && isVacantForComputer(spot: 2) != true && isVacantForComputer(spot: 3) != true
    && isVacantForComputer(spot: 4) != true && isVacantForComputer(spot: 5) != true
    && isVacantForComputer(spot: 6) != true && isVacantForComputer(spot: 7) != true
    && isVacantForComputer(spot: 8) != true) {
        gameOver = true
        print("\nTIE!")
        break;
    }

    let checkStatus:Bool = true

    while (checkStatus == true) {
        print("\nSelect position you wanna fill")
        let position = readLine()
        let indexOfPosition = testEmptyArray.index(of: position!)
        if (isVacantForPlayer(spot: indexOfPosition!, input: position!)==true) {
            testEmptyArray[indexOfPosition!] = "x"
            break
        } else {
            print("position already filled! Select again.")
            endGameResult()
        }
    }
    
    //win here
    if (((testEmptyArray[0] == "o") && (testEmptyArray[1] == "o")) && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[1] == "o") && (testEmptyArray[2] == "o")) && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[0] == "o") && (testEmptyArray[2] == "o")) && isVacantForComputer(spot: 1)==true) {
        testEmptyArray[1] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[0] == "o") && (testEmptyArray[3] == "o")) && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
        gameOver = true
    } else if (((testEmptyArray[6] == "o") && (testEmptyArray[3] == "o")) && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[6] == "o") && (testEmptyArray[0] == "o")) && isVacantForComputer(spot: 3)==true) {
        testEmptyArray[3] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[0] == "o") && (testEmptyArray[4] == "o")) && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[0] == "o") && (testEmptyArray[8] == "o")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[8] == "o") && (testEmptyArray[4] == "o")) && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[1] == "o") && (testEmptyArray[4] == "o")) && isVacantForComputer(spot: 7)==true) {
        testEmptyArray[7] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[1] == "o") && (testEmptyArray[7] == "o")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[7] == "o") && (testEmptyArray[4] == "o")) && isVacantForComputer(spot: 1)==true) {
        testEmptyArray[1] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[2] == "o") && (testEmptyArray[5] == "o")) && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[2] == "o") && (testEmptyArray[8] == "o")) && isVacantForComputer(spot: 5)==true) {
        testEmptyArray[5] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[5] == "o") && (testEmptyArray[8] == "o")) && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[2] == "o") && (testEmptyArray[4] == "o")) && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[2] == "o") && (testEmptyArray[6] == "o")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[4] == "o") && (testEmptyArray[6] == "o")) && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[3] == "o") && (testEmptyArray[4] == "o")) && isVacantForComputer(spot: 5)==true) {
        testEmptyArray[5] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[3] == "o") && (testEmptyArray[5] == "o")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[4] == "o") && (testEmptyArray[5] == "o")) && isVacantForComputer(spot: 3)==true) {
        testEmptyArray[3] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[6] == "o") && (testEmptyArray[7] == "o")) && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[6] == "o") && (testEmptyArray[8] == "o")) && isVacantForComputer(spot: 7)==true) {
        testEmptyArray[7] = "o"
        gameOver = true
        endGameResult()
    } else if (((testEmptyArray[7] == "o") && (testEmptyArray[8] == "o")) && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
        gameOver = true
        endGameResult()
    } 
    //block here
    else if (((testEmptyArray[0] == "x") && (testEmptyArray[1] == "x")) && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
    } else if (((testEmptyArray[1] == "x") && (testEmptyArray[2] == "x")) && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
    }else if (((testEmptyArray[0] == "x") && (testEmptyArray[2] == "x")) && isVacantForComputer(spot: 1)==true) {
        testEmptyArray[1] = "o"
    } else if (((testEmptyArray[0] == "x") && (testEmptyArray[3] == "x")) && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
    } else if (((testEmptyArray[6] == "x") && (testEmptyArray[3] == "x")) && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
    } else if (((testEmptyArray[6] == "x") && (testEmptyArray[0] == "x")) && isVacantForComputer(spot: 3)==true) {
        testEmptyArray[3] = "o"
    } else if (((testEmptyArray[0] == "x") && (testEmptyArray[4] == "x")) && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
    } else if (((testEmptyArray[0] == "x") && (testEmptyArray[8] == "x")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
    } else if (((testEmptyArray[8] == "x") && (testEmptyArray[4] == "x")) && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
    } else if (((testEmptyArray[1] == "x") && (testEmptyArray[4] == "x")) && isVacantForComputer(spot: 7)==true) {
        testEmptyArray[7] = "o"
    } else if (((testEmptyArray[1] == "x") && (testEmptyArray[7] == "x")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
    } else if (((testEmptyArray[7] == "x") && (testEmptyArray[4] == "x")) && isVacantForComputer(spot: 1)==true) {
        testEmptyArray[1] = "o"
    } else if (((testEmptyArray[2] == "x") && (testEmptyArray[5] == "x")) && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
    } else if (((testEmptyArray[2] == "x") && (testEmptyArray[8] == "x")) && isVacantForComputer(spot: 5)==true) {
        testEmptyArray[5] = "o"
    } else if (((testEmptyArray[5] == "x") && (testEmptyArray[8] == "x")) && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
    } else if (((testEmptyArray[2] == "x") && (testEmptyArray[4] == "x")) && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
    } else if (((testEmptyArray[2] == "x") && (testEmptyArray[6] == "x")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
    } else if (((testEmptyArray[4] == "x") && (testEmptyArray[6] == "x")) && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
    } else if (((testEmptyArray[3] == "x") && (testEmptyArray[4] == "x")) && isVacantForComputer(spot: 5)==true) {
        testEmptyArray[5] = "o"
    } else if (((testEmptyArray[3] == "x") && (testEmptyArray[5] == "x")) && isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
    } else if (((testEmptyArray[4] == "x") && (testEmptyArray[5] == "x")) && isVacantForComputer(spot: 3)==true) {
        testEmptyArray[3] = "o"
    } else if (((testEmptyArray[6] == "x") && (testEmptyArray[7] == "x")) && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
    } else if (((testEmptyArray[6] == "x") && (testEmptyArray[8] == "x")) && isVacantForComputer(spot: 7)==true) {
        testEmptyArray[7] = "o"
    } else if (((testEmptyArray[7] == "x") && (testEmptyArray[8] == "x")) && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
    } 

    //fork here

    //block human's fork here

    //play center
    else if ((isVacantForComputer(spot: 0)==true) && (isVacantForComputer(spot: 1)==true) && 
    (isVacantForComputer(spot: 2)==true) && (isVacantForComputer(spot: 3)==true) && 
    (isVacantForComputer(spot: 4)==true) && (isVacantForComputer(spot: 5)==true) && 
    (isVacantForComputer(spot: 6)==true) && (isVacantForComputer(spot: 7)==true) && 
    (isVacantForComputer(spot: 8)==true)) {
        testEmptyArray[4] = "o"
    }

    //play opposite corner
    else if (testEmptyArray[0] == "x" && isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
    } else if (testEmptyArray[6] == "x" && isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
    } else if (testEmptyArray[2] == "x" && isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
    } else if (testEmptyArray[8] == "x" && isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
    }

    //play empty corner
    else if (isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
    } else if (isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
    } else if (isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
    } else if (isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
    }

    //play empty side
    else if (isVacantForComputer(spot: 0)==true) {
        testEmptyArray[0] = "o"
    } else if (isVacantForComputer(spot: 1)==true) {
        testEmptyArray[1] = "o"
    } else if (isVacantForComputer(spot: 2)==true) {
        testEmptyArray[2] = "o"
    } else if (isVacantForComputer(spot: 3)==true) {
        testEmptyArray[3] = "o"
    } else if (isVacantForComputer(spot: 4)==true) {
        testEmptyArray[4] = "o"
    } else if (isVacantForComputer(spot: 5)==true) {
        testEmptyArray[5] = "o"
    } else if (isVacantForComputer(spot: 6)==true) {
        testEmptyArray[6] = "o"
    } else if (isVacantForComputer(spot: 7)==true) {
        testEmptyArray[7] = "o"
    } else if (isVacantForComputer(spot: 8)==true) {
        testEmptyArray[8] = "o"
    }
}
