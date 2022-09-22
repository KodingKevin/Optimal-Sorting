let words = ["bark", "shallow", "box", "Avanish", "apple", "dragon", "Kevin", "sack", "Isaac", "armadillo", "aardavark", "alligator", "ark", "is", "time", "timeless", "shall"]

let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var done : [String] = []

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
                if !sorted2.contains(word) {
                    sorted2.append(word)
                }
            }
        }
//Checks 3rd letter
        for letter in letters {
            var sorted3 : [String] = []
            for word in sorted2 {
                if word.count > 2 {
                    let char3 = Array(word)[2]   
                    if String(char3) == String(letter) {
                        sorted3.append(word)
                    }
                } else {
                    if !sorted3.contains(word) {
                        sorted3.append(word)
                    }
                }
            } 
            for letter in letters {
                var sorted4 : [String] = []
                for word in sorted3 {
                    if word.count > 3 {
                        let char4 = Array(word)[3]
                        if String(char4) == String(letter) {
                            sorted4.append(word)
                        }
                    } else {
                        if !sorted4.contains(word) {
                            sorted4.append(word)
                        }
                    }
                }
                for letter in letters {
                    var sorted5 : [String] = []
                    for word in sorted4 {
                        if word.count > 4 {
                            let char5 = Array(word)[4]
                            if String(char5) == String(letter) {
                                sorted5.append(word)
                                                         }
                        } else {
                            if !sorted5.contains(word) {
                                sorted5.append(word)
                            }
                        }
                    }
                    for letter in letters {
                        for word in sorted5 {
                            if word.count > 5 {
                                let char6 = Array(word)[5]
                                if String(char6) == String(letter) {
                                    done.append(word)
                                }
                            } else {
                                if !done.contains(word) {
                                    done.append(word)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

for word in done {
    print(word)
}
