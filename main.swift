//words used to test the algorthm 
let text = ["text", "main", "apple", "Fire", "Dragon", "Zebra", "ark", "tax","be", "A", "follow", "seeking", "seek", "difference", "different", "met"]

let little = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

let capital = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

var index = 0

var sorted : [String] = []

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
    var int = 0
    while int < 25{
        for resorted in sorted{
            if resorted.count == int && String(resorted.first!) == capital[index] ||
                 resorted.count == int && String(resorted.first!) == little[index]{
                print(resorted)
            }
            
        }
        int += 1

    }
}
