import UIKit

public extension UIDevice {
    var isIPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }

    var isIpad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }

    var isSmallDevice: Bool {
        return screenSize.height <= ScreenSize.iPhones_5_5s_5c_SE.height
    }

    var screenSize: ScreenSize {
        return ScreenSize()
    }
}
