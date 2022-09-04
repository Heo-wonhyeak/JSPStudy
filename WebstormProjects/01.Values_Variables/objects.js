const ezen = { name : 'ezen it', age : 10}
console.log(ezen);

let ezenAge = ezen.age;
console.log(ezenAge);

ezen.age = 20;
ezen.name = 'ezen academy'

ezenAge = ezen.age
let ezenName = ezen.name
console.log(ezenName)
console.log(ezenAge)

console.log(ezen);

delete ezen.age;
console.log(ezen);

let name2 = ezen.age;
console.log(name2)

ezen.address = '서울시 강남구'
console.log(ezen);