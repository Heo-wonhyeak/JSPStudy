console.log(typeof 42); //number
console.log(typeof true); //Boolean
console.log(typeof ""); //String
console.log(typeof ''); //String
console.log(typeof new String('Hello')); // object

console.log('변수선언');

let counter = 0;
console.log(counter);

counter = 'zero';   // 한 변수에 다른 타입을 입력하는 것은 가능하지만, 일반적으로 사용하지는 않는다!
console.log(counter);

let x;
console.log('x : '+x); //선언만한 변수는 undefined 라는 값이 출려된다.

const PI = 3.141592;
console.log(PI);

// PI=3.14; const는 수정 되지 않음 (상수!)

let y,z;
const Ezen = 0, EzenIT = 1;
