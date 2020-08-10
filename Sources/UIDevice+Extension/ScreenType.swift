public enum ScreenType {
    case iPhones_4_4S
    case iPhones_5_5s_5c_SE
    case iPhones_6_6s_7_8
    case iPhones_6Plus_6sPlus_7Plus_8Plus
    case iPhones_X_XS
    case iPhone_XR
    case iPhone_XSMax
    case unknown

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
