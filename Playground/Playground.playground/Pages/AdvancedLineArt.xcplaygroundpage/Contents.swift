import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 60
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Drawing
canvas.drawing { turtle in
    // Draw lineBalls
    turtle.penDown()
    turtle.lineBall(withXcor: 100, withYcor: 100, withSides: 3, withSize: 40)
    
    // Draw a dashed circle
    // Go to point
    turtle.penUp()
    turtle.goto(-450, -125)
    turtle.penDown()
    // Draw circle
    for _ in 1...36 {
        turtle.penUp()
        turtle.forward(22.5)
        turtle.right(5)
        turtle.penDown()
        turtle.forward(27.5)
        turtle.right(5)
    }
    
    // Draw lineExplosion
    turtle.lineExplosion(withXcor: 220, withYcor: 220, withSize: 100)
    turtle.lineExplosion(withXcor: 200, withYcor: 150, withSize: 5)
    
    // Hide turtle
    turtle.hideTortoise()
}
