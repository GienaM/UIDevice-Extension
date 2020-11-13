import UIKit

public enum ScreenSize {
    case iPhones_4_4S
    case iPhones_5_5s_5c_SE
    case iPhones_6_6s_7_8
    case iPhones_6Plus_6sPlus_7Plus_8Plus
    case iPhones_X_XS
    case iPhone_XR
    case iPhone_XSMax
    case unknown

    var height: CGFloat {
        switch self {
        case .iPhones_4_4S:
            return 960
        case .iPhones_5_5s_5c_SE:
            return 1136
        case .iPhones_6_6s_7_8:
            return 1334
        case .iPhones_6Plus_6sPlus_7Plus_8Plus:
            return 1920
        case .iPhones_X_XS:
            return 2436
        case .iPhone_XR:
            return 1792
        case .iPhone_XSMax:
            return 2688
        case .unknown:
            return UIScreen.main.nativeBounds.height
        }
    }

    var has9To16Ratio: Bool {
        let roundingBehavior = NSDecimalNumberHandler(
            roundingMode: .plain,
            scale: 2,
            raiseOnExactness: false,
            raiseOnOverflow: false,
            raiseOnUnderflow: false,
            raiseOnDivideByZero: true)
        let screenRatio = UIScreen.main.bounds.width / UIScreen.main.bounds.height
        let roundedScreenRatio = NSDecimalNumber(value: Float(screenRatio))
            .rounding(accordingToBehavior: roundingBehavior)
        let _9To16Ratio = NSDecimalNumber(value: (9.0/16.0))
            .rounding(accordingToBehavior: roundingBehavior)

        return roundedScreenRatio == _9To16Ratio
    }

    public init(screenHeight: CGFloat = UIScreen.main.nativeBounds.height) {
        switch screenHeight {
        case 960:
            self = .iPhones_4_4S
        case 1136:
            self = .iPhones_5_5s_5c_SE
        case 1334:
            self = .iPhones_6_6s_7_8
        case 1792:
            self = .iPhone_XR
        case 1920, 2208:
            self = .iPhones_6Plus_6sPlus_7Plus_8Plus
        case 2436:
            self = .iPhones_X_XS
        case 2688:
            self = .iPhone_XSMax
        default:
            self = .unknown
        }
    }
}
