import UIKit

public extension Int {
    ///  Public computed property to scale layout constants for small devices
    var deviceSizeAware: CGFloat {
        return UIDevice.current.isSmallDevice ? (CGFloat(self) * 0.8) : CGFloat(self)
    }
}
