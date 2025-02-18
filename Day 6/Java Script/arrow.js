()=>console.log('Sample')
const greeting=(fullname)=>console.log('welcome' +fullname)
const add=(num1,num2)=>num1+num2

const calculate=(num1,num2)=>{
    const a=num1+num2
    const b=num1-num2
    return a*b;//return explicitly
}
greeting(' JOGNDOE');
console.log('add:',add(3,4))
console.log('calculate:',calculate(3,4))