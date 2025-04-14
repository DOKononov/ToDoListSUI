//
//  NewItemVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

@Observable
final class NewItemVM {
    var title: String = ""
    var dueDate: Date = Date()
    var showAlert: Bool = false
    
    func save() {
        
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
