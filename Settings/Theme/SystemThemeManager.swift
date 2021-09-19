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
    
    func handleTheme(darkMode: Bool, system: Bool) {
        guard !system else {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .unspecified
            return
        }
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }
}
