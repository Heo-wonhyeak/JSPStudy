//특수문자 이스케이프 시퀀스

let s = '\\'
console.log('s : ' , s);
s = '\''
console.log('s : ' , s);
s = '\'\''
console.log('s : ' , s);

// String (문자 데이터)
let myName = '허원혁';
let email = "rkdcjf0147@naver.com";
let hello = `hello ${myName} ${'이게 의미가 있나?'}`;
console.log(myName);
console.log(email);
console.log(hello);

let ezen = 'world';
let greeting = `Hello ${ezen.toUpperCase()}`;
console.log(greeting);

let firstName = '바보';
let lastName = '이';
greeting = `hello, ${firstName.length >0 ? `${firstName[0]},` : `` } ${lastName}`;
console.log(greeting);

greeting = `<div>Hello</div>
<div>${ezen}</div>
"" '' / /t 
`
console.log(greeting);
