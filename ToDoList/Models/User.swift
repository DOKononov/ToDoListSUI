//
//  User.swift
//  ToDoList
//
//  Created by Dmitry Kononov on 12.04.25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
