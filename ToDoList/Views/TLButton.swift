//
//  TLButton.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 14.04.25.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroungColor: Color
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundStyle(.white)
                .font(.headline)
                .frame(width: 200, height: 40, alignment: .center)
                .background { Rectangle()
                        .foregroundStyle(backgroungColor)
                        .cornerRadius(10)
                }
        }
    }
}

#Preview {
    TLButton(title: "Title", backgroungColor: .blue) {
        //action
    }
}
