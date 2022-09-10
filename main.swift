//words used to test the algorthm 
let text = ["Text", "Main", "Apple", "Fire", "Dragon", "Zebra"]

let little = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

let capital = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]


var index = 0
for letter in 0...capital.count - 1{
    while index < text.count{
        let character = String(text[index].first!)
        if character == capital[letter] || character == little[letter]{
            print(text[index])
            index += 1
        }
        else{
            index += 1
        }
    }
    index = 0

}


