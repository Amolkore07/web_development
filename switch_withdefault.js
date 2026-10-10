function switchcase(val){
var answer="";
switch(val){
    case 1: 
    answer="cat";
    break;
    case 2:
        answer="dog";
        break;
    case 3:
        answer="lion";
         break;

    case 4:
        answer="cattle";
     break;
    default:
        answer="random shit";
        break;
       
}

return answer;
}

console.log(switchcase("a"));