var count = 0;

function countcard(card) {
    switch (card) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:

            count++;
            break;
        case 10:
        case "J":
        case "Q":
        case "K":
        case "A":
            count--;
            break;
    }
    var holdbet = 'hold'
    if (count > 0) {
        holdbeat = "bet"
    }
    return count + holdbet;
}

countcard(2); countcard('k'); countcard('A'); countcard(10);
console.log(countcard(4))

