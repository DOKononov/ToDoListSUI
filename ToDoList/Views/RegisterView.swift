//
//  RegisterView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct RegisterView: View {
    @State var viewmodel = RegisterVM()
    var body: some View {
            VStack {
                HeaderView(
                    title: "Register",
                    subtitle: "Start organizing todos",
                    color: .orange,
                    rotation: -15
                )
                TextField("Full Name", text: $viewmodel.fullName)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                TextField("Email", text: $viewmodel.email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewmodel.password)
                    .textFieldStyle(.roundedBorder)
                TLButton(title: "Create account", backgroungColor: .green) {
                    viewmodel.register()
                }
                Spacer()
            }
            .padding(.horizontal)
        }
}

#Preview {
    RegisterView()
}
