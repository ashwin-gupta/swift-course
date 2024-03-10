import Foundation

class Animal {
    var name: String
    
    init (n: String) {
        name = n
    }
}

class Human: Animal {
    
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breating under water...")
    }
}

let ashwin = Human(n: "Ashwin Gupta")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Jack Bauer")

let neighbours = [ashwin, jack, nemo]

if neighbours[0] is Human {
    print("First neighbour is Human")
}


func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
        }
    }
}
