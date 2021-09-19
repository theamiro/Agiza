//
//  SettingsView.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import SwiftUI

struct SettingsView: View {

    @Binding var darkModeEnabled: Bool
    @Binding var useSystemSettings: Bool
    @Binding var enableNotifications: Bool
    
    var twitterLink: URL = URL(string: "https://twitter.com/theamiro")!
    var githubLink: URL = URL(string: "https://github.com/theamiro")!
    
    @State private var previewIndex = 0
    @State private var themeIndex = 0
    var previewOptions = ["Always", "When Unlocked", "Never"]
    var themeOptions = [Color.blue, Color.green, Color.pink]
    
    var body: some View {
        NavigationView {
            Form {
//                NavigationLink(
//                    destination: EditProfileView(),
//                    label: {
//                        HStack(alignment: .center, spacing: 10) {
//                            Image("discord").resizable().aspectRatio(contentMode: .fill)
//                                .frame(width: 60, height: 60).clipShape(Circle())
//                            VStack(alignment: .leading, spacing: 5) {
//                                Text("John Doe").font(.system(size: 20, weight: .semibold))
//                                Text("This is your bio to say something short and cool to look cool. You know!").font(.caption).foregroundColor(.gray)
//
//                            }
//                        }.padding(.vertical, 5.0)
//                    })
                Section(header: Text("Display"), footer: Text("System settings will override Dark mode settings and use the current device theme").font(.system(size: 12)).foregroundColor(.gray).italic()) {
                    Picker(selection: $themeIndex, label: Text("Theme")) {
                        ForEach(0 ..< themeOptions.count) {
                            RoundedRectangle(cornerRadius: 4, style: .continuous)
                                .fill(self.themeOptions[$0])
                                .frame(width: 20, height: 20)
                        }
                    }
                    Toggle(isOn: $darkModeEnabled, label: {
                        Text("Dark Mode").foregroundColor(useSystemSettings ? .gray : .primary)
                    }).onChange(of: darkModeEnabled, perform: { _ in
                        SystemThemeManager.shared.handleTheme(darkMode: darkModeEnabled, system: useSystemSettings)
                    }).disabled(useSystemSettings)
                    Toggle(isOn: $useSystemSettings, label: {
                        Text("Use system settings")
                    }).onChange(of: useSystemSettings, perform: { _ in
                        SystemThemeManager.shared.handleTheme(darkMode: darkModeEnabled, system: useSystemSettings)
                    })
                }
                Section (header: Text("Notifications")) {
                    Toggle(isOn: $enableNotifications, label: {
                        Text("Enable notifications")
                    })
                    Picker(selection: $previewIndex, label: Text("Show Previews")) {
                        ForEach(0 ..< previewOptions.count) {
                            Text(self.previewOptions[$0])
                        }
                    }
                }
                Section (header: Text("Contribute")) {
                    Link(destination: twitterLink, label: {
                        Label("Follow me on Twitter @theamiro", systemImage: "link")
                    }).font(.system(size: 14, weight: .semibold)).foregroundColor(.blue)
                    Link(destination: githubLink, label: {
                        Label("Contribute to this project on Github", systemImage: "arrow.triangle.branch")
                    }).font(.system(size: 14, weight: .semibold)).foregroundColor(.blue)
                }
                Section (header: Text("Donate")) {
                    Link(destination: twitterLink, label: {
                            Label("Buy me a coffee", systemImage: "heart.fill")
                    }).font(.system(size: 14, weight: .semibold)).foregroundColor(.secondary)
                }
                Section(footer: VStack (alignment: .leading, spacing: 5) {
                            Text("Proverbs 29:2").fontWeight(.semibold)
                            Text("When the righteous are in authority, the people rejoice: but when the wicked beareth rule, the people mourn. (KJV)")}) {}
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(darkModeEnabled: .constant(true), useSystemSettings: .constant(true), enableNotifications: .constant(true))
            .previewDevice("iPhone 12 Pro")
    }
}
