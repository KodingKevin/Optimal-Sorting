//words used to test the algorthm 
let text = ["text", "main", "apple", "Fire", "Dragon", "Zebra", "ark", "tax","be", "A", "follow", "seeking", "seek", "difference"]

let little = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

let capital = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

var index = 0

var sorted : [String] = []

var Final : [String] = []

func Sort(list:[String],capital:String, little:String){
    
    for word in list{
        if String(word.first!) == capital || String(word.first!) == little{ 
            sorted.append(word)
        }
    }
}
for index in 0...capital.count - 1{
    Sort(list:text, capital:capital[index], little:little[index])
}

for index in 0...capital.count - 1{
    var sorted2 : [String] = []
    var int = 0
    while int < 25{
        for resorted in sorted{
            if resorted.count == int && String(resorted.first!) == capital[index] ||
                 resorted.count == int && String(resorted.first!) == little[index]{
                sorted2.append(resorted)
            }
            
        }
        int += 1
    }
    var sorted3 : [String] = []
    for second in 0...capital.count - 1{
        for resort in sorted2{
            var character2 = ""
            if resort.count > 1{
                character2 = String(Array(resort)[1])
            }
            else{
                if !sorted3.contains(resort){
                    sorted3.append(resort)
                }
            }
            if String(resort.first!) == capital[index] && character2 == little[second] ||
                 String(resort.first!) == little[index] && String(Array(resort)[1]) == little[second]{
                if !sorted3.contains(resort){
                    sorted3.append(resort)
                }
            }
        }
    }
    for word in sorted3{
        Final.append(word)
    }
}

for test in Final{
    print(test)
}
