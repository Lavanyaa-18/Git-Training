const array=[1,2,3,4,5,6,7,8,9,10]
//i want to create new array by muktiplying all ele with 3


// it is manual one
//const resultArray=[]
//for (let num of array)
//{
 //   resultArray.push(num*3 )
//}
//console.log(resultArray)

//using HOF
const newArray=array.map((num)=>num*3);
console.log(newArray)

const evenArray=array.filter((num)=>num%2==0)
console.log(evenArray)

//if first match found it will return the number
//if not found it return undefined

const found=array.find((num)=>num==19);
console.log(found? 'Found' +found: 'not Found')

//if dound return the index else -1
const foundindex=array.findindex((num)=>num==9);
console.log(foundindex? 'Found' +foundindex: 'not Found')