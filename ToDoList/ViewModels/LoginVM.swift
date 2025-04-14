//
//  LoginVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import FirebaseAuth
import Foundation

@Observable
final class LoginVM {
   var email = ""
   var password = ""
   var errorMessage = ""
    
    init () { }

    func login() {
        guard validate() else { return }
//        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""

        guard
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid email format"
            return false
        }
        
        return true
    }
    
}
