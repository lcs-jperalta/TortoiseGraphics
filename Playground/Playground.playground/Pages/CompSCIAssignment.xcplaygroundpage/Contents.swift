import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 120
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    //Go to the left
    turtle.penUp()
    turtle.goto(-150, 0)
    
    //Adjust pen width
    turtle.penSize(5)
    
    //Face turtle for J
    turtle.setHeading(325)
    
    //Hide turtle
    //turtle.hideTortoise()
    
    //Uppercase J
    turtle.curve(withSides: 30, withSize: 15, drawSides: 9)
    turtle.curve(withSides: 12, withSize: 4, drawSides: 4)
    turtle.curve(withSides: 75, withSize: 100, drawSides: 2)
    turtle.curve(withSides: 15, withSize: 5, drawSides: 7)
    turtle.curve(withSides: 50, withSize: 17, drawSides: 5)
    turtle.curve(withSides: 90, withSize: 2, drawSides: 9)
    turtle.setHeading(90)
    //print("y position after J is \(turtle.ycor)")
    //print("Heading after J is \(turtle.heading)")
    
    //Lowercase o before v
    turtle.curve(withSides: -30, withSize: 5, drawSides: 6)
    turtle.curve(withSides: 30, withSize: 9, drawSides: 1)
    turtle.curve(withSides: 20, withSize: 7, drawSides: 24)
    turtle.setHeading(140)
    print("y position at the top of a lowercase letter is \(turtle.ycor)")
    turtle.curve(withSides: -15, withSize: 15, drawSides: 4)
    
    //print("y position after o is \(turtle.ycor)")
    //print("Heading after o is \(turtle.heading)")
    
    //Lowercase v after o
    turtle.curve(withSides: 20, withSize: 4, drawSides: 4)
    
    print("y position after curve up is \(turtle.ycor)")
    
    turtle.hideTortoise()
}
