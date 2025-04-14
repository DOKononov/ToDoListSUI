//
//  NewItemVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

@Observable
final class NewItemVM {
    var title: String = ""
    var dueDate: Date = Date()
    var showAlert: Bool = false
    
    func save() {
        guard canSave else { return }
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let newItem = ToDoListItem(
            id: UUID().uuidString,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createDate: Date().timeIntervalSince1970,
            isDone: false
        )
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    }
}
