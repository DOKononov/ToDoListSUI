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
                HeaderView()
                Form {
                    TextField("Email adress", text: $email)
                    SecureField("Password", text: $password)
                    
                    Button {
                        //login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                            Text("Login")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                }
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
