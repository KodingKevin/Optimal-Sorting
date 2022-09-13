let words = ["bark", "shallow", "box", "apple", "dragon", "sack", "armadillo", "aardavark", "alligator", "ark"]

let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var done : [String] = []

//var index = 0
//var index2 = 0

for letter in letters {
    var sorted : [String] = []
    for word in words { 
        if String(word.first!) == String(letter) {
            sorted.append(word)
        }        
    }
//Checks 2nd letter
    for letter in letters {
        var sorted2 : [String] = []
        for word in sorted {
            if word.count > 1 {
                let char2 = Array(word)[1]   
                if String(char2) == String(letter) {
                    sorted2.append(word)
                }
            } else {
                sorted2.append(word)
            }
        }
//Checks 3rd letter
        for letter in letters {
            for word in sorted2 {
                if word.count > 2 {
                    let char3 = Array(word)[2]   
                    if String(char3) == String(letter ) {
                        done.append(word)
                    }
                } else {
                    done.append(word)
                }
            }
        }
    }
}

for word in done {
    print(word)
}
