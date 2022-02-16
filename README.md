# 숫자야구 프로젝트 

## STEP 2

### 순서도
![숫자게임_flowchart drawio](https://user-images.githubusercontent.com/50446512/153154023-c144b0a7-0c97-4240-bff1-347b7b5d4871.png)

### 주요 함수
`inputPlayerNumbers()` : 사용자의 숫자 입력을 받는 함수

`checkInputAvailability()` : 사용자의 입력값의 유효성 검사하는 함수

`startProgram()`: 프로그램을 시작해주는 함수

### 고민했던 점
1. `checkInputAvailability()` 에서 입력값이 잘못되었을 경우 다시 반복문을 돌게하는 로직을 구현하는 과정에서 많은 어려움이 있었는데
정보를 조사하다가 loop안에서 guard를 사용하면 continue라는 키워드 이용할 수 있다는 점을 알게 되어서 문제를 해결할 수 있었습니다.
2. 입력유효성 검사기능을 함수 별로 분리해주는 작업을 해보았는데
저희가 만들어 놓은 코드안에서 나름대로 분리를 해보았다고 생각했는데 잘 분리한건지 잘 모르겠습니다

### 궁금한 점
```swift
let playerInput = readLine()
        switch playerInput {
        case "1":
            startGame()
        case "2":
            isgameOver = true
        default:
            print("입력이 잘못되었습니다")
        }
```
+ switch 구문에서 playerInput을 언래핑 해주지 않았는데 어떻게 자동으로 언래핑이 된 값이 나올 수 있는지 궁금합니다.

### 학습 내용
1. 가독성
+ 예시
```swift
return [fistInputNumber, secondInputNumber, thirdInputNumber]
```
+ return 문은 최대한 깔끔하게 유지하는 것이 가독성에 좋다고 한다. 상수로 빼내어 관리해주는 것이 좋은 방법이다.

2. 상수 관리
+ 예시
```swift
let numberOfDigits = 3
```
+ 프로젝트의 규모가 큰 경우, 이후에 발생할 변경사항에 대해서 취약하지 않도록 구현해주는 것이 좋다. 위에 예시에서 한 번만 변경해도 아래에 영향을 주는 부분에는 모두 반영이 되도록 하는것이 좋을것 같다.

3. 역할 분리
+ 역할 분리에 대한 고민은 끝이 없으면서도 그만큼 어려운 부분인것 같다. 추후에 객체 지향 프로그래밍(OOP)에 대해서 공부해보면 많은 도움이 될거 같다.
