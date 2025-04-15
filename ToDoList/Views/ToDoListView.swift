//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    @State private var viewmodel = ToDoListVM()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button(role: .destructive) {
                                viewmodel.delete(item: item)
                            } label: {
                                Text("Delete")
                            }

                        }
                }
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
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
    ToDoListView(userId: "BpTEXtSdnWOlqk4VRjjHbj4ZY6y2")
}
