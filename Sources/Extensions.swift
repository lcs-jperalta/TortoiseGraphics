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
    func lineBall(withXcor: Double, withYcor: Double, withSides: Int, withSize: Int) {
        for _ in 1...withSides {
            self.forward(Double(withSize))
            self.left((((Double(withSides) - 2) * 180) / Double(withSides)) / 2)
            self.forward(1.4 * Double(withSize))
            self.backward(1.4 * Double(withSize))
            self.right((360 / Double(withSides)) + (((Double(withSides) - 2) * 180) / Double(withSides)) / 2)
        }
    }
    func lineExplosion(withXcor: Double, withYcor: Double, withSize: Double) {
        for _ in 1...50 {
            // Turn a random amount
            let turn = self.random(360)
            self.left(turn)

            // Draw a random line length
            let distance = self.random(withSize)
            self.forward(distance)
            if distance <= 10 {
                self.forward(10)
            }

            // Go back to centre of canvas and original heading
            self.penUp()
            self.goto(withXcor, withYcor)
            self.setHeading(0)
            self.penDown()
        }
    }
}
