import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { turtle in
            
            // Add your commands within this block
            // Go to the left
            turtle.penUp()
            turtle.goto(-200, 0)
            // Adjust pen width
            turtle.penSize(5)
            // Hide turtle
            turtle.hideTortoise()
            
            turtle.setHeading(90)
            
            // Uppercase J
            // Face turtle for J
            turtle.setHeading(325)
            // Curve up
            turtle.curve(withSides: 30, withSize: 15, drawSides: 9)
            // Turn down
            turtle.curve(withSides: 12, withSize: 4, drawSides: 4)
            // Curve down
            turtle.curve(withSides: 75, withSize: 100, drawSides: 2)
            // Turn up
            turtle.curve(withSides: 15, withSize: 5, drawSides: 7)
            // Curve up
            turtle.curve(withSides: 50, withSize: 17, drawSides: 5)
            // Turn to next letter
            turtle.curve(withSides: 90, withSize: 2, drawSides: 9)
            // Set heading
            turtle.setHeading(90)
            
            // Lowercase o before v
            // Turn up
            turtle.curve(withSides: -30, withSize: 5, drawSides: 6)
            // Turn right
            turtle.curve(withSides: 30, withSize: 9, drawSides: 1)
            // Curve right
            turtle.curve(withSides: 20, withSize: 7, drawSides: 6)
            // Turn left
            turtle.left(200)
            // Curve down-left
            turtle.curve(withSides: -20, withSize: 7, drawSides: 8)
            // Curve right
            turtle.curve(withSides: -25, withSize: 4, drawSides: 6)
            // Curve up
            turtle.curve(withSides: -30, withSize: 5, drawSides: 9)
            // Curve left (for loop)
            turtle.curve(withSides: -10, withSize: 7, drawSides: 4)
            // Turn down (for loop)
            turtle.curve(withSides: -10, withSize: 4, drawSides: 2)
            // Curve right (loop)
            turtle.curve(withSides: -10, withSize: 12, drawSides: 2)
            // Turn right to next letter
            turtle.curve(withSides: 6, withSize: 5, drawSides: 2)
            // Set heading
            turtle.setHeading(90)
            
            //Lowercase v after o
            // Curve down
            turtle.curve(withSides: 20, withSize: 4, drawSides: 4)
            // Curve right
            turtle.curve(withSides: 30, withSize: 4, drawSides: 4)
            // Turn down
            turtle.curve(withSides: -25, withSize: 2, drawSides: 7)
            // Curve right then up
            turtle.curve(withSides: -30, withSize: 3, drawSides: 8)
            // Curve up
            turtle.curve(withSides: -40, withSize: 15, drawSides: 2)
            // Turn down
            turtle.right(150)
            // Curve right to next letter
            turtle.curve(withSides: -30, withSize: 6, drawSides: 3)
            // Set heading
            turtle.setHeading(90)
            
            // Lowercase e after v
            // Continue curve up
            turtle.curve(withSides: -50, withSize: 1, drawSides: 10)
            // Turn left
            turtle.curve(withSides: -30, withSize: 1, drawSides: 10)
            // Turn down
            turtle.curve(withSides: -40, withSize: 1, drawSides: 9)
            // Curve down
            turtle.curve(withSides: -30, withSize: 8, drawSides: 3)
            // Curve right
            turtle.curve(withSides: -40, withSize: 3, drawSides: 7)
            // Set heading
            turtle.setHeading(90)
            
            // Lowercase n
            // Turn up
            turtle.curve(withSides: -35, withSize: 1, drawSides: 4)
            // Curve up
            turtle.curve(withSides: -35, withSize: 5, drawSides: 5)
            // Turn right
            turtle.curve(withSides: 40, withSize: 1, drawSides: 5)
            // Curve right
            turtle.curve(withSides: 40, withSize: 2, drawSides: 7)
            // Turn down
            turtle.curve(withSides: 40, withSize: 1, drawSides: 9)
            // Go down
            turtle.curve(withSides: 40, withSize: 26, drawSides: 1)
            // Turn up
            turtle.right(170)
            // Curve up
            turtle.curve(withSides: 40, withSize: 21, drawSides: 1)
            // Curve right
            turtle.curve(withSides: 40, withSize: 2, drawSides: 10)
            // Turn down
            turtle.curve(withSides: 40, withSize: 1, drawSides: 9)
            // Go down
            turtle.curve(withSides: 50, withSize: 14, drawSides: 1)
            // Curve right
            turtle.curve(withSides: -50, withSize: 1, drawSides: 18)
            // Set heading
            turtle.setHeading(90)
            
            // Go to last name
            turtle.setHeading(90)
            turtle.forward(40)
            turtle.left(90)
            turtle.forward(70)
            turtle.setHeading(90)
            
            // Start uppercase P
            // Turn right
            turtle.right(20)
            // Curve up
            turtle.curve(withSides: -35, withSize: 4, drawSides: 12)
            print("y position after curve up is \(turtle.ycor)")
            // Turn down
            turtle.left(165)
            // Go down
            turtle.curve(withSides: 200, withSize: 47, drawSides: 2)
            // Turn up
            turtle.right(175)
            // Go up
            turtle.curve(withSides: 150, withSize: 30, drawSides: 2)
            // Turn right
            turtle.curve(withSides: 50, withSize: 4, drawSides: 13)
            // Turn down then left
            turtle.curve(withSides: 40, withSize: 3, drawSides: 16)
            // Curve left
            turtle.curve(withSides: 35, withSize: 12, drawSides: 4)
            
            // Go to next letter
            turtle.setHeading(90)
            turtle.forward(55)
            turtle.right(90)
            turtle.forward(45)
            
            // Lowercase e
            // Set heading
            turtle.setHeading(90)
            // Turn up
            turtle.curve(withSides: -50, withSize: 4, drawSides: 13)
            // Turn left
            turtle.curve(withSides: -30, withSize: 1, drawSides: 9)
            // Turn down
            turtle.curve(withSides: -30, withSize: 2, drawSides: 6)
            // Curve down
            turtle.curve(withSides: -50, withSize: 8, drawSides: 3)
            // Curve right
            turtle.curve(withSides: -40, withSize: 1, drawSides: 10)
            // Set heading
            turtle.setHeading(90)
            
            // Lowercase r
            // Curve up
            turtle.curve(withSides: -45, withSize: 4, drawSides: 13)
            // Turn down
            turtle.right(150)
            // Curve right
            turtle.curve(withSides: -35, withSize: 3, drawSides: 10)
            // Turn down again
            turtle.right(160)
            // Curve down
            turtle.curve(withSides: -50, withSize: 7, drawSides: 4)
            // Turn right
            turtle.curve(withSides: -30, withSize: 2, drawSides: 7)
            // Set heading
            turtle.setHeading(90)
            
            // Lowercase a
            // Curve up
            turtle.curve(withSides: -30, withSize: 5, drawSides: 7)
            // Turn right
            turtle.curve(withSides: 40, withSize: 3, drawSides: 9)
            // Curve right
            turtle.curve(withSides: 35, withSize: 9, drawSides: 2)
            // Turn left
            turtle.right(175)
            // Curve left then down
            turtle.curve(withSides: -45, withSize: 4, drawSides: 12)
            // Curve right
            turtle.curve(withSides: -40, withSize: 2, drawSides: 12)
            // Turn up
            turtle.curve(withSides: -45, withSize: 3, drawSides: 7)
            // Curve up
            turtle.curve(withSides: -40, withSize: 12, drawSides: 2)
            // Turn down
            turtle.right(190)
            // Curve down
            turtle.curve(withSides: -45, withSize: 13, drawSides: 2)
            // Turn right
            turtle.curve(withSides: -50, withSize: 1, drawSides: 14)
            // Set heading
            turtle.setHeading(90)
            print("y position is \(turtle.ycor)")
            
            // Lowercase l
            // Turn up
            turtle.curve(withSides: -50, withSize: 5, drawSides: 10)
            // Curve up
            turtle.curve(withSides: -30, withSize: 40, drawSides: 2)
            // Turn down
            turtle.curve(withSides: -40, withSize: 2, drawSides: 18)
            // Curve down
            turtle.curve(withSides: -40, withSize: 23, drawSides: 4)
            // Curve right
            turtle.curve(withSides: -35, withSize: 4, drawSides: 8)
            // Set heading
            turtle.setHeading(90)
            print("y position is \(turtle.ycor)")
            
            // Lowercase t
            // Turn up
            turtle.curve(withSides: -35, withSize: 4, drawSides: 8)
            // Curve up
            turtle.curve(withSides: -30, withSize: 100, drawSides: 1)
            // Turn down
            turtle.right(190)
            // Go down
            turtle.curve(withSides: -30, withSize: 98, drawSides: 1)
            // Curve right
            turtle.curve(withSides: -40, withSize: 3, drawSides: 10)
            print("y position is \(turtle.ycor)")
            // Go to cross
            turtle.setHeading(0)
            turtle.forward(90)
            turtle.left(90)
            // Cross
            turtle.curve(withSides: 1, withSize: 40, drawSides: 1)
            // Go back
            turtle.setHeading(180)
            turtle.forward(90)
            turtle.left(90)
            turtle.forward(40)
            
            // Lowercase a
            // Curve up
            turtle.curve(withSides: -30, withSize: 5, drawSides: 7)
            // Turn right
            turtle.curve(withSides: 40, withSize: 3, drawSides: 9)
            // Curve right
            turtle.curve(withSides: 35, withSize: 9, drawSides: 2)
            // Turn left
            turtle.right(175)
            // Curve left then down
            turtle.curve(withSides: -45, withSize: 4, drawSides: 12)
            // Curve right
            turtle.curve(withSides: -40, withSize: 2, drawSides: 12)
            // Turn up
            turtle.curve(withSides: -45, withSize: 3, drawSides: 7)
            // Curve up
            turtle.curve(withSides: -40, withSize: 12, drawSides: 2)
            // Turn down
            turtle.right(190)
            // Curve down
            turtle.curve(withSides: -45, withSize: 13, drawSides: 2)
            // Turn right
            turtle.curve(withSides: -50, withSize: 1, drawSides: 14)
            // Set heading
            turtle.setHeading(90)
            
        }
    }
    
}
