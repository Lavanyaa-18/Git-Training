console.log(a);//undefined
var a=10
console.log(a);//10

//console.log(b)
//let b=10// use of let it wont take value with it
//console.log(b)

//for call back we can use annonymous function IT IS MOST USED
const test=function(){
    console.log('TEST TRIGGERED')
}
//for debugging and for recursion use named function
const myFuction=function test(){
    console.log('TEST TRIGGERED')
}

var factorial=function fact(n)
{
    return n<2 ? 1: n*fact(n-1);
}
console.log(factorial(3))