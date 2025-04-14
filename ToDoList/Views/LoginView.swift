//
//  LoginView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct LoginView: View {

    @State var  viewmodel = LoginVM()
    
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done",
                    color: .pink,
                    rotation: 15
                )
                if !viewmodel.errorMessage.isEmpty {
                    Text(viewmodel.errorMessage)
                        .foregroundStyle(.red)
                }
                TextField("Email adress", text: $viewmodel.email)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.none)
                SecureField("Password", text: $viewmodel.password)
                    .textFieldStyle(.roundedBorder)
                
                TLButton(title: "Login", backgroungColor: .blue) {
                    viewmodel.login()
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
