const array=[];//empty
const array1=[1,2,3,4,5,6,7]
const array2=new Array(4)

console.log(array.length)
console.log(array1.length)
console.log(array2.length)

array.push(10);
array.push(20);
array.push(30);//push ele at last
console.log('After push',array)
array.unshift(5);
array.unshift(2);//add element at first index

console.log('After unshift',array)
console.log(array.pop());

console.log('After pop',array)
console.log(array.shift())

console.log('After shift',array)