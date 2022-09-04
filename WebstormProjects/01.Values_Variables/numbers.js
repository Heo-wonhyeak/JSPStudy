console.log(Number.MAX_SAFE_INTEGER);
console.log(Number.MIN_SAFE_INTEGER);
console.log(Number.MAX_VALUE);
console.log(Number.MIN_VALUE);

//문자열을 숫자로 변환
let A = '3.14';
console.log(typeof A);//string
const PI =  parseFloat(A);
console.log(typeof PI);//number

let B = '3.14';
console.log(typeof B);//string
const PI1 = parseInt(B);
console.log(typeof PI1);//number

//숫자를 문자열로 변환
const PISTRING = PI.toString();
console.log(typeof PISTRING);//string

const PISTRING1 = PI1.toString();
console.log(typeof  PISTRING1);//string

const const1 = (3).toString();
console.log(typeof const1);//string

//문자열 잘라내기
console.log('Hello'.substring(0,2.9999999)); // 소수점 버림