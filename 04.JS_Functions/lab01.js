function average(x,y) {
    return (x+y)/2
}

let result = average(2,4)
console.log(result)

// 숫자가 아닌 다른 인수를 전달하면 어떻게 되나요?
result = average('7',6)
console.log(result)

// 배열에서 특정한 값의 인덱스 계산하는 함수
// 일치하는 값을 찾으면
function indexOf(arr, value) {
 for (let i in arr) {
     if(arr[i] === value)
         return i
 }
}

let array = [2 ,3 ,5 ,7 ,11 ,13 ,17];
console.log(indexOf(array,11))

