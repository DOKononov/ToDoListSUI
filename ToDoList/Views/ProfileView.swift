//
//  ProfileView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct ProfileView: View {
    @State private var viewmodel = ProfileVM()
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
