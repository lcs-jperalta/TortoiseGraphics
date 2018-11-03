//: [Next](@next)
//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 120
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Drawing
canvas.drawing { turtle in
    
    // Draw the axes
    for _ in 1...4 {
        turtle.forward(250)
        turtle.backward(250)
        turtle.right(90)
    }
    
    // Draw the grid
    turtle.penUp()
    turtle.goto(-250, 250)
    
    for _ in 1...10 {
        turtle.backward(500)
        turtle.penUp()
        turtle.forward(500)
        turtle.right(90)
        turtle.forward(50)
        turtle.left(90)
        turtle.penDown()
    }
    turtle.penUp()
    turtle.goto(-250, -250)
    turtle.left(90)
    for _ in 1...10 {
        turtle.backward(500)
        turtle.penUp()
        turtle.forward(500)
        turtle.right(90)
        turtle.forward(50)
        turtle.left(90)
        turtle.penDown()
    }
    // Fill
    turtle.fillColor(.red)
    
    // Go to middle
    turtle.penUp()
    turtle.goto(0, 0)
    
    
}
