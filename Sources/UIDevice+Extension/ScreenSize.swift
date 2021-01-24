import UIKit

public enum ScreenSize {
    case iPhones_4_4S
    case iPhones_5_5s_5c_SE1
    case iPhones_6_6s_7_8_SE2
    case iPhones_6Plus_6sPlus_7Plus_8Plus
    case iPhones_X_XS_11Pro
    case iPhone_XR_11
    case iPhone_XSMax_11ProMax
    case iPhone_12Mini
    case iPhone_12_12Pro
    case iPhone_12ProMax
    case unknown

    // MARK: - Public properties

    public var height: CGFloat {
        switch self {
        case .iPhones_4_4S:
            return 960
        case .iPhones_5_5s_5c_SE1:
            return 1136
        case .iPhones_6_6s_7_8_SE2:
            return 1334
        case .iPhones_6Plus_6sPlus_7Plus_8Plus:
            return 1920
        case .iPhones_X_XS_11Pro:
            return 2436
        case .iPhone_XR_11:
            return 1792
        case .iPhone_XSMax_11ProMax:
            return 2688
        case .iPhone_12Mini:
            return 2340
        case .iPhone_12_12Pro:
            return 2532
        case .iPhone_12ProMax:
            return 2778
        case .unknown:
            return UIScreen.main.nativeBounds.height
        }
    }

    public var has9To16Ratio: Bool {
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

    // MARK: - Initialization

    public init(screenHeight: CGFloat = UIScreen.main.nativeBounds.height) {
        switch screenHeight {
        case 960:
            self = .iPhones_4_4S
        case 1136:
            self = .iPhones_5_5s_5c_SE1
        case 1334:
            self = .iPhones_6_6s_7_8_SE2
        case 1792:
            self = .iPhone_XR_11
        case 1920, 2208:
            self = .iPhones_6Plus_6sPlus_7Plus_8Plus
        case 2340:
            self = .iPhone_12Mini
        case 2436:
            self = .iPhones_X_XS_11Pro
        case 2532:
            self = .iPhone_12_12Pro
        case 2688:
            self = .iPhone_XSMax_11ProMax
        case 2778:
            self = .iPhone_12ProMax
        default:
            self = .unknown
        }
    }
}
