import CoreGraphics

class GraphicsContext {

    let size: CGSize
    let cgContext: CGContext
    let isUIViewContext: Bool

    init(size: CGSize, cgContext: CGContext, isUIViewContext: Bool = false) {
        self.size = size
        self.cgContext = cgContext
        self.isUIViewContext = isUIViewContext
    }

    func setup() {
        cgContext.saveGState()

        // Setup coordinate
        if isUIViewContext {
            // https://developer.apple.com/library/content/documentation/General/Conceptual/Devpedia-CocoaApp/CoordinateSystem.html
            // The default coordinate system for views in iOS and OS X
            // differ in the orientation of the vertical axis:
            cgContext.translateBy(x: 0, y: size.height)
            cgContext.scaleBy(x: 1, y: -1)
        }
        cgContext.translateBy(x: size.width * 0.5, y: size.height * 0.5)
    }

    func tearDown() {
        cgContext.restoreGState()
    }

    static func createBitmapContext(size: CGSize, scale: CGFloat) -> GraphicsContext {
        let cgContext = CGContext(data: nil,
                                  width: Int(size.width * scale),
                                  height: Int(size.height * scale),
                                  bitsPerComponent: 8,
                                  bytesPerRow: Int(size.width * scale) * 4,
                                  space: CGColorSpaceCreateDeviceRGB(),
                                  bitmapInfo: CGImageAlphaInfo.premultipliedFirst.rawValue)!
        // swiftlint:disable:previous force_unwrapping
        cgContext.scaleBy(x: scale, y: scale)
        return GraphicsContext(size: size, cgContext: cgContext, isUIViewContext: false)
    }

}
