//
//  SettingSection.swift
//  SettingsTemplate
//
//  Created by DA on 2021-05-18.

protocol HasSlider: CustomStringConvertible{
    var containsSlider: Bool {get}
}

enum SettingOptions: Int, CaseIterable, HasSlider {
    case Difficulty
    case Gameplay
    case RemoveAds
    case Calibrate
    case Privacy
    case Share
    
    var containsSlider: Bool{
        switch self {
        case .Difficulty:
            return true
        default:
            return false
        }
    }
    
    var description: String{
        switch self {
        case .Difficulty:
            return "Difficulty"
        case .Gameplay:
            return "Gameplay Letters"
        case .RemoveAds:
            return "Remove Ads"
        case .Calibrate:
            return "Calibrate Fingerspelling AI"
        case .Privacy:
            return "Privacy Policy"
        case .Share:
            return "Share App"
        }
    }
}

