//
//  ToDoListVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI
import FirebaseFirestore

@Observable
final class ToDoListVM {
    var showinNewItemView: Bool = false
    private var userId: String
    
    init (userId: String) {
        self.userId = userId
    }
    
    func delete(item: ToDoListItem) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(item.id)
            .delete()
    }
}

