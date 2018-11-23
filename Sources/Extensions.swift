public extension Tortoise {
    func square(withSize size: Double) {

        self.penDown()
        for _ in 1...4 {
            self.forward(size)
            self.right(90)
        }
        self.penUp()
    }
    func curve(withSides sideCount: Int, withSize size: Double, drawSides sideLimit: Int) {

        self.penDown()
        for _ in 1...sideLimit {
        self.forward(Double(size))
        self.right(360 / Double(sideCount))
        }
    self.penUp()
    }
    func hairball(withXcor: Double, withYcor: Double, withScale: Int) {
        for _ in 1...15 {
            // Go to
            self.goto(withXcor, withYcor)
            // Let statements
            let heading = self.random(360)
            let size = self.random(5)
            // Set heading
            self.setHeading(heading)
            // Wave
            self.curve(withSides: 100, withSize: size, drawSides: withScale)
            self.curve(withSides: -100, withSize: size, drawSides: withScale)
        }
    }
}
