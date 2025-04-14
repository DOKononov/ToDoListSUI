//
//  LoginView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done",
                    color: .pink,
                    rotation: 15
                )
                TextField("Email adress", text: $email)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    //login
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(width: 200, height: 40, alignment: .center)
                        .background { Rectangle()
                                .foregroundStyle(.blue)
                                .cornerRadius(10)
                        }
                }
                Spacer()
                Text("New around here?")
                NavigationLink("Create an account") {
                    RegisterView()
                }
                .navigationTitle("")
            }
            .padding(.horizontal)
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    LoginView()
}
