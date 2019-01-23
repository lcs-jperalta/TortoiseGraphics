import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 120
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    // Go to the left
    turtle.penUp()
    turtle.goto(-200, 0)
    // Adjust pen width
    turtle.penSize(5)
    // Hide turtle
    turtle.hideTortoise()
    
    turtle.setHeading(90)
    
    // Uppercase J
    turtle.uppercaseJ
    
    // Lowercase o before v
    turtle.lowercaseO()
    
    //Lowercase v after o
    turtle.lowercaseV()
    
    // Lowercase e after v
    turtle.lowercaseE()
    
    // Lowercase n
    turtle.lowercaseN()
    
    // Go to last name
    turtle.setHeading(90)
    turtle.forward(40)
    turtle.left(90)
    turtle.forward(70)
    turtle.setHeading(90)
    
    // Start uppercase P
    turtle.uppercaseP()
    
    // Go to next letter
    turtle.setHeading(90)
    turtle.forward(55)
    turtle.right(90)
    turtle.forward(45)
    
    // Lowercase e
    turtle.lowercasee()
    
    // Lowercase r
    turtle.lowercaseR()
    
    // Lowercase a
    turtle.lowercaseA()
    
    // Lowercase l
    turtle.lowercaseL()
    
    // Lowercase t
    turtle.lowercaseT()
    
    // Lowercase a
    turtle.lowercaseA()
    
}
