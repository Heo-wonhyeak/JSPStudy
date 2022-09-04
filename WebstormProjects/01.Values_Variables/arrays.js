const numbers = [1,2,3,'many']
console.log('numbers : ',numbers)
console.log(numbers.length)
console.log(numbers[0])
console.log(numbers[3])

const someNumbers = [, 2, ,9]   // 프로퍼티 '0', '2' 에 해당하는 값이 없음
console.log(someNumbers[0])
console.log(someNumbers)

someNumbers[6] = 12
console.log(someNumbers.length)
console.log(someNumbers)

const someNumbers2 = [1,2,7,9,] //끝부분이 , 로 끝났지만 에러나지 않는다 확장성의 의미로 이해
console.log(someNumbers2)

const developer = [
    '이 순신',
    '정도전',
    '허원혁',
    '송미진',
]
console.log(developer)

numbers.today = true;
console.log(numbers);

console.log(typeof numbers);

let a = Array.isArray(numbers)
console.log(a)

// 배열을 문자열로 변경
const str = ''+[1,2,3]      // 문자열 '1,2,3'
console.log(str)
console.log(typeof str)
console.log(Array.isArray(str))

// 자바스크립트에는 고차원 배열 개념은 없다
// 흉내가능~
const square = [
    [16,3,2,13],
    [1,2,3,4],
    [5,10,9,70],
    [4,18,41,31]
]
console.log(square)
const element = square[1][2]        //두쌍의 대괄호로 필요한 요소 접근함.
console.log(element)