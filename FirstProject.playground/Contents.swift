//: Playground - noun: a place where people can play

//import UIKit

class Shape
{
    var numberOfSides = 0
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape
{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides."
    }
}
class Square: NamedShape
{
    var sideLength: Double
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double
    {
        return sideLength * sideLength
        
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
class EquilateralTriangle: NamedShape
{
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var perimeter: Double
    {
        get
        {
            return 3.0 * sideLength
        }
        set
        {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)


func greet(person: String) -> String
{
    return "Hello, " + person + "!"
}
func greetAgain(person: String) -> String
{
    return "Hello again, " + person + "!"
}
func greet(person: String, alreadyGreeted: Bool) -> String
{
    if alreadyGreeted
    {
        return greetAgain(person: person)
    }
    else
    {
        return greet(person: person)
    }
}
func sayHelloWorld() -> String
{
    return "Hello world"
}
func greetNoReturn(person: String)
{
    print("Hello, \(person)!")
}
var firstString = "Hello, playground😉"
var donutString = "I love donuts!🍩 I want to eat a donut right now\nThe chocolate kind with vanilla filling in the middle is the best.🍩"
var face = "ミへ(シ)ノ"
var integer = 20
var favNumber = 2
var numAnswer = integer + favNumber
print(firstString)
print(donutString)
print(face)
print(numAnswer)
print(greet(person: "Jake"))
print(greet(person: "Jake", alreadyGreeted: true))
print(greetAgain(person: "Jake"))
print(sayHelloWorld())
print(greetNoReturn(person: "Nick"))
