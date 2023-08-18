//
//  TaskViewModel.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 08.04.23.
//

import Foundation
class TaskViewModel: ObservableObject {
    @Published var taskData = [TaskItem]()
    @Published var item: TaskItem = TaskItem(id: 0,
                                             date_start: "",
                                             date_finish:"",
                                             name: "",
                                             description: "")
    // Функция установки значения объекта
    func setValue(form date_start: Date ,to date_finish: Date) {
        self.item.id = taskData.count
        self.item.date_start = DateService.getTimeStamp(date: date_start)
        self.item.date_finish = DateService.getTimeStamp(date: date_finish)
    }
    // Провепка пустых полей
    func cheackFilder() -> Bool {
        guard self.item.name != "" else { return false }
        guard self.item.description != "" else { return false }
        return true
    }
    // Удаление задачи
    func remove(id: Int) {
        self.taskData = self.taskData.filter({ $0.id != id })
    }
// Добавление задачи
    func addObject() {
        self.taskData.append(self.item)
        self.clearFilder()
    }
    // Очистка полей
    func clearFilder() {
        self.item.name = ""
        self.item.description = ""
    }
}
