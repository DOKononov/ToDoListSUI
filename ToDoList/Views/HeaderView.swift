//
//  HeaderView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let color: Color
    let rotation: Double
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(color)
                .rotationEffect(.degrees(rotation))
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
            }
            .padding(.top, 80)
            .foregroundStyle(.white)
        }
        .frame(
            width: UIScreen.main.bounds.width*3,
            height: 350
        )
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", color: .blue, rotation: -15)
    Spacer()
}
