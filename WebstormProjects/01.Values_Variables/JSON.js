let ezen = JSON.parse(
    '{ "name": "이순신","age" : 30,"행운의 수" : [3,7],"ezenac" : false }'
)
console.log('ezen : ',ezen)

let str = JSON.stringify(
    {name: ['Admiral Yi',undefined,'Lee'],age : undefined,행운의수 : [3,7],ezenac : false }
)
console.log(str)