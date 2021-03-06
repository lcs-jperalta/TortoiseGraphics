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
    turtle.lineBall(withXcor: 30, withYcor: 0, withSides: 3, withSize: 20)
    turtle.lineBall(withXcor: 40, withYcor: -90, withSides: 7, withSize: 10)
    turtle.lineBall(withXcor: -230, withYcor: 20, withSides: 8, withSize: 35)
    turtle.lineBall(withXcor: -200, withYcor: -120, withSides: 4, withSize: 25)
    turtle.lineBall(withXcor: 10, withYcor: -200, withSides: 5, withSize: 30)
    turtle.lineBall(withXcor: -80, withYcor: 30, withSides: 6, withSize: 10)
    turtle.lineBall(withXcor: -130, withYcor: 100, withSides: 10, withSize: 20)
    turtle.lineBall(withXcor: -80, withYcor: -90, withSides: 9, withSize: 25)
    
    // Draw a dashed circle
    // Go to point
    turtle.penUp()
    turtle.goto(-450, -125)
    turtle.penDown()
    turtle.setHeading(0)
    // Draw circle
    turtle.penSize(3)
    for _ in 1...36 {
        turtle.penUp()
        turtle.forward(22.5)
        turtle.right(5)
        turtle.penDown()
        turtle.forward(27.5)
        turtle.right(5)
    }
    
    // Draw lineExplosion (stars)
    turtle.penSize(1)
    turtle.lineExplosion(withXcor: 220, withYcor: 220, withSize: 100)
    turtle.lineExplosion(withXcor: 200, withYcor: 120, withSize: 5)
    turtle.lineExplosion(withXcor: 100, withYcor: 110, withSize: 5)
    turtle.lineExplosion(withXcor: 120, withYcor: 220, withSize: 5)
    turtle.lineExplosion(withXcor: 0, withYcor: 200, withSize: 5)
    turtle.lineExplosion(withXcor: 200, withYcor: 0, withSize: 5)
    turtle.lineExplosion(withXcor: 170, withYcor: -200, withSize: 5)
    
    // Hide turtle
    turtle.hideTortoise()
}
