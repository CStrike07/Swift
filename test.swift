import Foundation

// variables, constant and statics

var name="Chirag Sinha"
var age=21

let home="Patna" // used to create a constant

// Static in swift is similar as that of C++, it will create same instance
// Of the static varible for each object of an class
// Again it is similar to constant but when we have a class property 
// As contant then when we create new object then evry time new instance of
// That constant will be created

// Unlike C++, static needs to be only declared inside the class here 
// We can not declare it outside the class

class Person(){
    static let age = 21
    var name = "Chirag Sinha"
}

let age = Person.age

// Types int, string ,double, float, bool

    var name: String = "abcdef" // way to specify type of varible 
    let num: Int = 1
    let price: Double = 4.50
    var pi: Float = 3.14

    class Car{

    }

    // var maruti = Car()
    //or
    var maruti: Car = Car()
    var safe: Bool = true

    // function

    func hey(){
        print("hello world")
    }

// Inside brackets we have our parameter, and arrow will have the return type

    func add(a: Int, b: Int) -> Int {
        return a+b
    }

    hey()

    var x: Int = 3
    var y: Int = 5
    let sum: Int = add(a: x, b: y)
    print(sum)

    func square(a: Int) -> Int {
        return a*a;
    }

    let sq: Int = square(a: sum)
    print(sq);

    func even_odd(a: Int) -> Bool {
        if a%2==0 {
            return true
        } 
        return false
    }

var check: Bool = even_odd(a: 5)
check = even_odd(a: 4)
print(check)

// // Classes and structs

class vehicle {

}

// Inheritance

class car: vehicle {
    var color = "red"
    var model = "auto"
    func drive(){
        
    }
}

//Constrcutors, evry class must have a constrcutor

class car {
    var color: String
    var model: String
    init(color: String, model: String){
        self.color = color  // Self is likr this keyword in C++
        self.model = model
    }
}

var bmw = car(color: "red", model: "auto")
var merci = car(color: "blue", model: "semi")
var maruti = merci // here during assignment we have by reference 
// in case of struct its by value

print(bmw.color)

// Struct has exactly same syntax as that of class
// Only difference is that class is refrence type and struct is value type
// So when we create a instance of a struct object then it will create a copy 
// Just like pass by reference and pass by value in C++ 

// Loops for in and while

    let num = [1,2,3,4,5]

    for x in num {
        let res = 2*x
        print(res)
    }

    var x = 0

    while x<5 {
        print(x)
        x+=1
    }

// Optionals and unwrapping
// Optionals tells that the variable may or may not have the specified value

    var name: String? = "Chirag"
    name = nil

// now lets say we have two optional int a and int b since they are optional
// We can not perform normal arthimatic operation on them wihtout unwrapping them
// We can consider them as a box where ther can be a gift or it can be empty
// So we need to check if it is empty then we cant add it if not then we can proceed

// unwrappign

    var x: Int? = 5
    var y: Int? = 6

    if let a = x {
        if let b = y {
            print(a+b)
        }
    }

    print(type(of: x))

// Conditional

    var x = 5

    if x>5 {

    } else if x > 10 {

    } else {

    }

    if x>5 || x<10 {

    }

// Guard Statements
// Guard is like the ternary operator in C++

func check_if_more_than_five(a: Int) -> Bool {
    guard a>5, a<10 else {
        return false
    }
    return true;
}

var ans = check_if_more_than_five(a: 4)
print(ans)

let text: String?
text = "hello"

func checkbox(){
    guard let val = text else { return }
    print(val)
}

checkbox()

// Enums and Switch

enum states {
    case InProgress
    case Aborted
    case complete
    case willstart
}

var current: states?

if let val = current {
    print(val)
}

let current = states.InProgress

func CheckStates() {
    switch current {
        case .InProgress:
            print("Progress")
            break
        case .Aborted:
        break
        case .complete:
        break
        case .willstart:
        break
    }
}

// Protocols

// Protocol is like interface in java
// it basically define what are the necessary function and property 
// the class should have inheritng it

protocol  CarProtocol {
    var color: String { get set }
    func drive()
    func WheellMoving() -> Bool
}

class Car{

}

class BMW: Car, CarProtocol {
    var color: String

    init(c: String){
        self.color = c
    }

    func drive(){

    }
    func WheellMoving() -> Bool{
        return true
    }
}
