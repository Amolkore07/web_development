function testsize(num){
    if (num<5){
        return "tinu"
   }
   else if(num<10){
    return "small"
   }
   else if (num<15){
    return "medium"
   }
   else if (num<20){
    return "big"
   }
   else {
    return "huge"
   } 

}

console.log(testsize(25));
// console.log(testsize);