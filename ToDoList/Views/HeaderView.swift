//
//  HeaderView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: .zero)
                .foregroundStyle(.pink)
                .rotationEffect(.degrees(15))
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .bold()
                Text("Get things done")
                    .font(.system(size: 30))
            }
            .padding(.top, 30)
            .foregroundStyle(.white)
        }
        .frame(
            width: UIScreen.main.bounds.width*3,
            height: 300
        )
        .offset(y: -100)
    }
}
