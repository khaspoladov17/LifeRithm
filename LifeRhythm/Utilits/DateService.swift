//
//  DateService.swift
//  LifeRhythm
//
//  Created by Mahmud Khaspoladov on 22.04.23.
//

import Foundation
// Функция перевода формата Дата в Строку
class DateService {
    class func dateToString(date: Date, format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: date)
    }
    // Unix время
    class func getTimeStamp(date: Date) -> String {
        let timeStamp = date.timeIntervalSince1970
        return String(timeStamp)
    }
}
