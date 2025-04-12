//
//  ContentView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 11.04.25.
//

import SwiftUI
import FirebaseCore

struct MainView: View {
    init() {
        FirebaseApp.configure()
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    MainView()
}
