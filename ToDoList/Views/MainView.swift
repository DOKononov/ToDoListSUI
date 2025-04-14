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
            //sign in
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
