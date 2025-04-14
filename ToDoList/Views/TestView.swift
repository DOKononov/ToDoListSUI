//
//  TestView.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 14.04.25.
//

//import SwiftUI
//
//struct CustomTabBarView: View {
//    @State private var selectedTab: Tab = .home
//
//    enum Tab {
//        case home, add, favorites
//    }
//
//    var body: some View {
//        ZStack {
//            // Main content
//            VStack {
//                switch selectedTab {
//                case .home:
//                    Text("Home View")
//                case .add:
//                    Text("Add Something")
//                case .favorites:
//                    Text("Favorites View")
//                }
//                Spacer()
//            }
//
//            // Custom Tab Bar
//            VStack {
//                Spacer()
//                HStack {
//                    Spacer()
//
//                    Button(action: {
//                        selectedTab = .home
//                    }) {
//                        Image(systemName: "square.grid.2x2")
//                            .font(.system(size: 22))
//                            .foregroundColor(selectedTab == .home ? .purple : .gray)
//                    }
//
//                    Spacer()
//
//                    ZStack {
//                        Circle()
//                            .fill(Color.purple)
//                            .frame(width: 60, height: 60)
//                            .shadow(color: .purple.opacity(0.3), radius: 10, y: 4)
//
//                        Button(action: {
//                            selectedTab = .add
//                        }) {
//                            Image(systemName: "plus")
//                                .foregroundColor(.white)
//                                .font(.system(size: 26, weight: .bold))
//                        }
//                    }
//                    .offset(y: -20)
//
//                    Spacer()
//
//                    Button(action: {
//                        selectedTab = .favorites
//                    }) {
//                        Image(systemName: "heart.fill")
//                            .font(.system(size: 22))
//                            .foregroundColor(selectedTab == .favorites ? .purple : .gray)
//                    }
//
//                    Spacer()
//                }
//                .padding(.horizontal, 30)
//                .padding(.top, 14)
//                .padding(.bottom, 28)
//                .background(
//                    Color.white
//                        .clipShape(RoundedRectangle(cornerRadius: 30))
//                        .shadow(color: .black.opacity(0.05), radius: 5, y: -5)
//                )
//            }
//        }
//        .ignoresSafeArea(.keyboard, edges: .bottom)
//    }
//}
//
//
//#Preview {
//    CustomTabBarView()
//}
