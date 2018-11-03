import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 120
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
    // Defining the polygon method
    func polygon(withSize size: Double) {
    
    turtle.penDown()
    turtle.forward(13)
    turtle.left(45)
    turtle.penUp()
    }
    
    // Invoking the method
    polygon(withSize: 10)
}
