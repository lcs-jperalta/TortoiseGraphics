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
    }
    func uppercaseJ() {
        // Face self for J
        self.setHeading(325)
        // Curve up
        self.curve(withSides: 30, withSize: 15, drawSides: 9)
        // Turn down
        self.curve(withSides: 12, withSize: 4, drawSides: 4)
        // Curve down
        self.curve(withSides: 75, withSize: 100, drawSides: 2)
        // Turn up
        self.curve(withSides: 15, withSize: 5, drawSides: 7)
        // Curve up
        self.curve(withSides: 50, withSize: 17, drawSides: 5)
        // Turn to next letter
        self.curve(withSides: 90, withSize: 2, drawSides: 9)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseO() {
        // Turn up
        self.curve(withSides: -30, withSize: 5, drawSides: 6)
        // Turn right
        self.curve(withSides: 30, withSize: 9, drawSides: 1)
        // Curve right
        self.curve(withSides: 20, withSize: 7, drawSides: 6)
        // Turn left
        self.left(200)
        // Curve down-left
        self.curve(withSides: -20, withSize: 7, drawSides: 8)
        // Curve right
        self.curve(withSides: -25, withSize: 4, drawSides: 6)
        // Curve up
        self.curve(withSides: -30, withSize: 5, drawSides: 9)
        // Curve left (for loop)
        self.curve(withSides: -10, withSize: 7, drawSides: 4)
        // Turn down (for loop)
        self.curve(withSides: -10, withSize: 4, drawSides: 2)
        // Curve right (loop)
        self.curve(withSides: -10, withSize: 12, drawSides: 2)
        // Turn right to next letter
        self.curve(withSides: 6, withSize: 5, drawSides: 2)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseV() {
        // Curve down
        self.curve(withSides: 20, withSize: 4, drawSides: 4)
        // Curve right
        self.curve(withSides: 30, withSize: 4, drawSides: 4)
        // Turn down
        self.curve(withSides: -25, withSize: 2, drawSides: 7)
        // Curve right then up
        self.curve(withSides: -30, withSize: 3, drawSides: 8)
        // Curve up
        self.curve(withSides: -40, withSize: 15, drawSides: 2)
        // Turn down
        self.right(150)
        // Curve right to next letter
        self.curve(withSides: -30, withSize: 6, drawSides: 3)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseE() {
        // Continue curve up
        self.curve(withSides: -50, withSize: 1, drawSides: 10)
        // Turn left
        self.curve(withSides: -30, withSize: 1, drawSides: 10)
        // Turn down
        self.curve(withSides: -40, withSize: 1, drawSides: 9)
        // Curve down
        self.curve(withSides: -30, withSize: 8, drawSides: 3)
        // Curve right
        self.curve(withSides: -40, withSize: 3, drawSides: 7)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseN() {
        // Turn up
        self.curve(withSides: -35, withSize: 1, drawSides: 4)
        // Curve up
        self.curve(withSides: -35, withSize: 5, drawSides: 5)
        // Turn right
        self.curve(withSides: 40, withSize: 1, drawSides: 5)
        // Curve right
        self.curve(withSides: 40, withSize: 2, drawSides: 7)
        // Turn down
        self.curve(withSides: 40, withSize: 1, drawSides: 9)
        // Go down
        self.curve(withSides: 40, withSize: 26, drawSides: 1)
        // Turn up
        self.right(170)
        // Curve up
        self.curve(withSides: 40, withSize: 21, drawSides: 1)
        // Curve right
        self.curve(withSides: 40, withSize: 2, drawSides: 10)
        // Turn down
        self.curve(withSides: 40, withSize: 1, drawSides: 9)
        // Go down
        self.curve(withSides: 50, withSize: 14, drawSides: 1)
        // Curve right
        self.curve(withSides: -50, withSize: 1, drawSides: 18)
        // Set heading
        self.setHeading(90)
    }
    func uppercaseP() {
        // Turn right
        self.right(20)
        // Curve up
        self.curve(withSides: -35, withSize: 4, drawSides: 12)
        // Turn down
        self.left(165)
        // Go down
        self.curve(withSides: 200, withSize: 47, drawSides: 2)
        // Turn up
        self.right(175)
        // Go up
        self.curve(withSides: 150, withSize: 30, drawSides: 2)
        // Turn right
        self.curve(withSides: 50, withSize: 4, drawSides: 13)
        // Turn down then left
        self.curve(withSides: 40, withSize: 3, drawSides: 16)
        // Curve left
        self.curve(withSides: 35, withSize: 12, drawSides: 4)
    }
    func lowercasee() {
        // Set heading
        self.setHeading(90)
        // Turn up
        self.curve(withSides: -50, withSize: 4, drawSides: 13)
        // Turn left
        self.curve(withSides: -30, withSize: 1, drawSides: 9)
        // Turn down
        self.curve(withSides: -30, withSize: 2, drawSides: 6)
        // Curve down
        self.curve(withSides: -50, withSize: 8, drawSides: 3)
        // Curve right
        self.curve(withSides: -40, withSize: 1, drawSides: 10)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseR() {
        // Curve up
        self.curve(withSides: -45, withSize: 4, drawSides: 13)
        // Turn down
        self.right(150)
        // Curve right
        self.curve(withSides: -35, withSize: 3, drawSides: 10)
        // Turn down again
        self.right(160)
        // Curve down
        self.curve(withSides: -50, withSize: 7, drawSides: 4)
        // Turn right
        self.curve(withSides: -30, withSize: 2, drawSides: 7)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseA() {
        // Curve up
        self.curve(withSides: -30, withSize: 5, drawSides: 7)
        // Turn right
        self.curve(withSides: 40, withSize: 3, drawSides: 9)
        // Curve right
        self.curve(withSides: 35, withSize: 9, drawSides: 2)
        // Turn left
        self.right(175)
        // Curve left then down
        self.curve(withSides: -45, withSize: 4, drawSides: 12)
        // Curve right
        self.curve(withSides: -40, withSize: 2, drawSides: 12)
        // Turn up
        self.curve(withSides: -45, withSize: 3, drawSides: 7)
        // Curve up
        self.curve(withSides: -40, withSize: 12, drawSides: 2)
        // Turn down
        self.right(190)
        // Curve down
        self.curve(withSides: -45, withSize: 13, drawSides: 2)
        // Turn right
        self.curve(withSides: -50, withSize: 1, drawSides: 14)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseL() {
        // Turn up
        self.curve(withSides: -50, withSize: 5, drawSides: 10)
        // Curve up
        self.curve(withSides: -30, withSize: 40, drawSides: 2)
        // Turn down
        self.curve(withSides: -40, withSize: 2, drawSides: 18)
        // Curve down
        self.curve(withSides: -40, withSize: 23, drawSides: 4)
        // Curve right
        self.curve(withSides: -35, withSize: 4, drawSides: 8)
        // Set heading
        self.setHeading(90)
    }
    func lowercaseT() {
        // Turn up
        self.curve(withSides: -35, withSize: 4, drawSides: 8)
        // Curve up
        self.curve(withSides: -30, withSize: 100, drawSides: 1)
        // Turn down
        self.right(180)
        // Curve down
        self.curve(withSides: -30, withSize: 50, drawSides: 1)
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
        // Go to position
        self.penUp()
        self.goto(withXcor, withYcor)
        self.penDown()

        // Create lineBall
        self.setHeading(self.random(360 / Double(withSides)))
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
            // Make line length bigger than 1
            if distance <= 1 {
                self.forward(1)
            }
            // Go back to centre
            self.penUp()
            self.goto(withXcor, withYcor)
            self.penDown()
        }
    }
}
