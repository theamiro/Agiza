//
//  HomeView.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @AppStorage("useSystemSettings") private var useSystemSettings = false
    @AppStorage("enableNotifications") private var enableNotifications = true
    
    var body: some View {
        TabView(content: {
            ArticleListView().tabItem {
                Image(systemName: "newspaper")
                Text("Articles")
            }
            PoliticiansListView().tabItem {
                Image(systemName: "person.3.fill")
                Text("Politicians")
            }
            SettingsView(darkModeEnabled: $darkModeEnabled, useSystemSettings: $useSystemSettings, enableNotifications: $enableNotifications).tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
        }).onAppear{
            SystemThemeManager.shared.handleTheme(darkMode: darkModeEnabled, system: useSystemSettings)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
