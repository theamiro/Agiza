//
//  SystemThemeManager.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import Foundation
import UIKit

class SystemThemeManager {
    
    static let shared = SystemThemeManager()
    
    private init() {
    }
    
    enum TintColor{
        case orange
        case magenta
        case purple
        case blue
    }
    
    func handleTheme(darkMode: Bool, system: Bool) {
        guard !system else {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
            return
        }
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }
    
    func handleTint(tintColor: TintColor) {
        UIApplication.shared.windows.first?.tintColor =  .cyan
    }
}
