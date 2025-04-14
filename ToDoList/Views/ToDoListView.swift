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
                    viewmodel.showinNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $viewmodel.showinNewItemView) { 
                    NewItemView(newItemPresented: $viewmodel.showinNewItemView)
                }

            }
        }
    }
}

#Preview {
    ToDoListView(userId: "123")
}
