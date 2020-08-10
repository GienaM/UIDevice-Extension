import UIKit

public extension UIDevice {
    var isIPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }

    var isIpad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }

    var isSmallDevice: Bool {
        return [.iPhones_4_4S, .iPhones_5_5s_5c_SE].contains(screenType)
    }

    var screenType: ScreenType {
        return ScreenType()
    }
}
