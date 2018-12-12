import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Drawing
canvas.drawing { turtle in
    turtle.setHeading(30)
    turtle.penUp()
    turtle.goto(0, 0)
    turtle.penDown()
    for _ in 1...2 {
        for _ in 1...2 {
            for _ in 1...6 {
                turtle.right(60)
                turtle.forward(25)
            }
            turtle.left(120)
        }
    turtle.right(120)
    }
}
