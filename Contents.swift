
// Constants and Variables

let myConstant = 0

var myVariable: Int = 0

//myConstant = 1 // cannot change

myVariable = 1

// Array

let ints: [Int] = [0,1,2,3,4]
let anys: [Any] = [0,"",2,3,4]
let foo = "1"
let bar = Int(foo)

// Optionals

enum Optional<T> {
    case none
    case some(T)
}

struct Friend {
    let name: String
    var age: Int?
}


var garric = Friend.init(name: "Garric", age: nil)


if let unwrappedAge = garric.age {
    print(unwrappedAge)
} else {
    print("nil")
}

garric.age = 33

if let unwrappedAge = garric.age {
    print(unwrappedAge)
}

guard let otherAge = garric.age else {
    fatalError()
}

otherAge

//if let unwrappedName = garric.name {
//
//} // Error not an optional


let zap = garric.age?.description

//if garric.age!.description.isEmpty {
//
//} // Use as expression


let sergey: Friend? = Friend.init(name: "Sergey", age: nil)

let toop = sergey?.age?.description


class Group {
    let friends: [Friend]
    var leader: Friend?

    init(friends: [Friend], leader: Friend?) {
        self.friends = friends
        self.leader = leader
    }
}



// If versus Guard

// If this expression is true enter the curly braces
if "".isEmpty {
    // do stuff
}

let goop: Int? = 0

// Contiune only if the statment is true
guard let unwrappedGoop = goop else {
    fatalError()
}

unwrappedGoop

enum Season {
    case summer, winter, fall, spring
}

enum Color {
    case black
    case blue
    case white
    case red
    case orange
}


struct Flag {
    let colors: [Color]
}


let armenian = Flag(colors: [.red, .blue, .orange])
let american = Flag(colors: [.red, .white, .blue])

import Foundation

enum State {
    case waiting
    case loading(URL)
    case loaded(Data)
    case finished
}


let state = State.waiting

switch state {
case .waiting:
    break
case .loading(let url):
    print(url)
case .loaded(let data):
    print(data)
case .finished:
    break
}

















