const person = {
    firstname: "John",
    lastname: "Doe",
    email: "John@gmail.com",
    age:45,
    address:{
        street:"123 Main St",
        city:"Anytown",
        zipcode:5676,
        country:"US"
    },
    greeting: function(){
        console.log('Welcome $(this.firstName} $(this.lastName}');
    }
}
console.log("Address",person.address)
person.greeting()
console.log(person['email']);
for(let key in person){
    console.log(person[key])
}