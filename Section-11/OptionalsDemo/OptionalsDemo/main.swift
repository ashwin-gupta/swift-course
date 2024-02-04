
struct MyOptional {
    var property = 123
    
    func method() {
        print("I am a struct's method")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

print(myOptional?.method())


