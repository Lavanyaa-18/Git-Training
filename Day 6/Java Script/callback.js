let data=[]
const fetchData=()=>{
    setTimeout(()=>{
        data=[1,2,3,4,5];
        console.log("data fetched succesfully", data);
    //trigger call back here

    },2000)
}
const displayData=()=>{
    console.log("display func",data)
}
fetchData(displayData)