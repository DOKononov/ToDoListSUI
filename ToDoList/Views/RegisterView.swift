//
//  RegisterView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repeatePasswort: String = ""
    var body: some View {
            VStack {
                HeaderView(
                    title: "Register",
                    subtitle: "Start organizing todos",
                    color: .orange,
                    rotation: -15
                )
                TextField("Email adress", text: $email)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                SecureField("Repeate password", text: $repeatePasswort)
                    .textFieldStyle(.roundedBorder)
                Button {
                    //login
                } label: {
                    Text("Register")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(width: 200, height: 40, alignment: .center)
                        .background { Rectangle()
                                .foregroundStyle(.blue)
                                .cornerRadius(10)
                        }
                }
                Spacer()
            }
            .padding(.horizontal)
        }
}

#Preview {
    RegisterView()
}
