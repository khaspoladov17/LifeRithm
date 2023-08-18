//
//  TaskItemModel.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import Foundation
// Объект: Задача
struct TaskItem: Identifiable, Codable {
    var id: Int
    var date_start: String
    var date_finish: String
    var name: String
    var description: String
}
