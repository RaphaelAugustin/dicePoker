class Hand() {

    var dice1 = Dice();
    var dice2 = Dice();
    var dice3 = Dice();
    var dice4 = Dice();
    var dice5 = Dice();

    func rollDices() {
        dice1->roll();
        dice2->roll();
        dice3->roll();
        dice4->roll();
        dice5->roll();
        return self;
    }

    func rerollDices(d1 = false, d2 = false, d3 = false, d4 = false, d5 = false) {
        if d1 === true {dice1->roll()}
        if d2 === true {dice2->roll()}
        if d3 === true {dice3->roll()}
        if d4 === true {dice4->roll()}
        if d5 === true {dice5->roll()}
        return self;
    }

    func getCombinations() {
    
        var numbers = [dice1->getValue(), dice2->getValue(), dice3->getValue(), dice4->getValue(), dice5->getValue()];
        var occurences = [0, 0, 0, 0, 0, 0];

        if numbers.contains(2) && numbers.contains(3) && numbers.contains(4) {
            if numbers.contains(1) {return 4}
            else if numbers.contains(6) {return 5}
        }
        
        for number in numbers {
            occurences[number-1]++;
        }
        
        if occurences.contains(5) {return 8}
        else if occurences.contains (4) {return 7}
        else if occurences.contains(3) && occurences.contains(2) { return 6}
        else if occurences.contains(3) {return 3}
        else if occurences.contains(2) {
            numberOfPairs = 0;
            for occurence in occurences {
                if occurence === 2 {numberOfPairs++}
            }
            return numberOfPairs
        } else {return 0}
    }
}



// 0
// 1 paire 
// 2 double paire
// 3 brelan
// 4 petite suite xxxxx
// 5 grande suite xxxxx
// 6 full
// 7 carré
// 8 cinq pareil