//
//  EditProfileView.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import SwiftUI

struct EditProfileView: View {
    @State var fullname: String = ""
    var body: some View {
        Form {
            Section(header: Text("Profile")) {
                TextField("Full Name", text: $fullname)
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
