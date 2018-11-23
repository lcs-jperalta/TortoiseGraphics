import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 2000
canvas.color = .white
PlaygroundPage.current.liveView = canvas

// Drawing
canvas.drawing { turtle in
    turtle.hairball(withXcor: 0, withYcor: 0)
    turtle.hairball(withXcor: 60, withYcor: 70)
    turtle.hairball(withXcor: 120, withYcor: 40)
    turtle.hairball(withXcor: 190, withYcor: 200)
    turtle.hairball(withXcor: 230, withYcor: 10)
    turtle.hairball(withXcor: 20, withYcor: 190)
    }
    

