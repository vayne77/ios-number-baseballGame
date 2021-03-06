import Foundation

var computerNumbers: [Int] = []
var remainingTime: Int = 9

func createUniqueRadnomNumbers() -> [Int] {
    var uniqueRandomNumbers: Set<Int> = []
    let numberOfDigits: Int = 3
    let randomOfRange: ClosedRange<Int> = 1...9
    
    while uniqueRandomNumbers.count < numberOfDigits {
        uniqueRandomNumbers.insert(Int.random(in: randomOfRange))
    }
    return Array(uniqueRandomNumbers)
}

func compare(computerNumber: [Int], playerNumber: [Int]) -> (strikeCount: Int, ballCount: Int) {
    var strikeCount: Int = 0
    var ballCount: Int = 0
    let iterationOfRange: Range<Int> = 0..<3
    
    for index in iterationOfRange {
        if computerNumber[index] == playerNumber[index] {
            strikeCount += 1
        } else if computerNumber.contains(playerNumber[index]) {
            ballCount += 1
        }
    }
    return (strikeCount: strikeCount, ballCount: ballCount)
}

func printWinner(strikeCount: Int) {
    if strikeCount == 3 {
        print("사용자 승리!")
    } else if remainingTime == 0 {
        print("컴퓨터 승리...!")
    }
}

func startGame() {
    computerNumbers = createUniqueRadnomNumbers()
    
    repeat {
        let playerNumbers: [Int] = createUniqueRadnomNumbers()
        let strikeBallOfResult = compare(computerNumber: computerNumbers, playerNumber: playerNumbers)
        remainingTime -= 1
        
        print("임의의 수 : \(playerNumbers[0]) \(playerNumbers[1]) \(playerNumbers[2])")
        
        printWinner(strikeCount: strikeBallOfResult.strikeCount)
        
        print("\(strikeBallOfResult.strikeCount) 스트라이크, \(strikeBallOfResult.ballCount) 볼")
        print("남은 기회 : \(remainingTime)")
        
        if strikeBallOfResult.strikeCount == 3 {
            return
        }
        
    } while remainingTime != .zero
}

startGame()
