//
//  ContentView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 11.04.25.
//

import SwiftUI
import FirebaseCore

struct MainView: View {
    @State var viewmodel = MainVM()
    
    var body: some View {
        if viewmodel.isSignedIn, !viewmodel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
//    @ViewBuilder
    private var accountView: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                ToDoListView(userId: viewmodel.currentUserId)
            }
            Tab("Profile", systemImage: "person.circle") {
                ProfileView()
            }
        }
    }
}

#Preview {
    MainView()
}
