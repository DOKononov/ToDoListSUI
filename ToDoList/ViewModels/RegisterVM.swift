//
//  RegisterVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import FirebaseAuth
import FirebaseFirestore
import SwiftUI

@Observable
final class RegisterVM {
  var email: String = ""
  var password: String = ""
  var fullName: String = ""
    
    
    
    func register() {
        guard validate() else { return }
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let user = result?.user.uid else { return }
            self?.insertUserRecord(id: user)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, name: fullName, email: email, joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    
    private func validate() -> Bool {
        guard
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty,
            !fullName.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
