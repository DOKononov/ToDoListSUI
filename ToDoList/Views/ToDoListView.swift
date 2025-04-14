//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct ToDoListView: View {
    @State private var viewmodel = ToDoListVM()
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    //action
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

#Preview {
    ToDoListView(userId: "123")
}
