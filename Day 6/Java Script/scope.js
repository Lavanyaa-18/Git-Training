let name="test";//global var

function hello(){
    if(true)
    {
        let a=10;
        const b=20;
        var c=30;
        console.log('inside func let',a)
        console.log('inside func const',b)
        console.log('inside func var',c)
    }
    console.log('outside the block',c) 
}

function myFunction()
{
    let a=10;
    const b=20;
    var c=30;
    console.log('inside func let',a)
    console.log('inside func const',b)
    console.log('inside func var',c)
}

hello()
myFunction()