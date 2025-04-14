//
//  NewItemView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct NewItemView: View {
    
    @State private var viewmodel = NewItemVM()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top)
            
            VStack {
                TextField("Title", text: $viewmodel.title)
                DatePicker("Date", selection: $viewmodel.dueDate, displayedComponents: .date)
                    .datePickerStyle(.graphical)

            }
            TLButton(title: "Save", backgroungColor: .pink) {
                if viewmodel.canSave {
                    viewmodel.save()
                    newItemPresented = false
                } else {
                    viewmodel.showAlert = true
                }

            }
        }
        .alert("Error", isPresented: $viewmodel.showAlert) {
            Button("Ok") { }
        } message: {
            Text("Wrong date or empty title.")
        }
        .padding(.horizontal)
    }
}

#Preview {
    NewItemView(newItemPresented: .constant(true))
}
