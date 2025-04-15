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
                if let user = viewmodel.user {
                    profile(of: user)
                } else {
                    Text("Loading profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewmodel.fetch()
        }
    }
    
    @ViewBuilder
    private func profile(of user: User) -> some View {
        Image(systemName: "person")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.blue)
            .frame(width: 125, height: 125)
            .padding()
        VStack(alignment: .leading) {
            HStack {
                Text("Name:")
                    .bold()
                Text(user.name)
            }
            
            HStack {
                Text("Email:")
                    .bold()
                Text(user.email)
            }
            
            HStack {
                Text("Register date:")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .omitted))")
            }
        }
        .padding()

        
        TLButton(
            title: "Log Out",
            backgroungColor: .red
        ) {
            viewmodel.logout()
        }
        .padding()

        Spacer()
    }
}

#Preview {
    ProfileView()
}

