function switchcase(val){
var answer="";
switch(val){
    case 1: 
    answer="alpha";
    break;
    case 2:
        answer="beta";
        break;
    case 3:
        answer="gamma";
         break;

    case 4:
        answer="delta";
     break;
     case 5:
        answer="no case found";
}

return answer;
}

console.log(switchcase(5));