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
    
}
