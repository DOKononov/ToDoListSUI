//
//  MainVM.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI
import FirebaseAuth

final class MainVM: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
}

