//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct ToDoListItemView: View {
    @State private var viewmodel = ToDoListItemVM()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(item.title)")
                    .font(.body)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .omitted))")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            
            Button {
                viewmodel.toddleIsDone(for: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }

        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "asd", title: "Test", dueDate: 12312123, createDate: 32131231, isDone: true))
}
