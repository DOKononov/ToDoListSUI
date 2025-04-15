//
//  ToDoListItemVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

@Observable
final class ToDoListItemVM {
    
    func toggleIsDone(for item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(item.id)
            .setData(newItem.asDictionary())
    }
}

