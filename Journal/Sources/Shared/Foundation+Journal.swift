//
//  Foundation+Journal.swift
//  Journal
//
<<<<<<< HEAD
//  Created by JinSeo Yoon on 2018. 8. 18..
=======
//  Created by 윤진서 on 2018. 8. 11..
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
//  Copyright © 2018년 Jinseo Yoon. All rights reserved.
//

import Foundation

extension DateFormatter {
    static func formatter(with format: String) -> DateFormatter {
<<<<<<< HEAD
        let df = DateFormatter()
=======
        let df = DateFormatter.init()
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        df.dateFormat = format
        return df
    }
    
<<<<<<< HEAD
    static var entryDateFormatter: DateFormatter = DateFormatter.formatter(with: "yyyy. MM. dd. EEE")
    static var entryTimeFormatter: DateFormatter = DateFormatter.formatter(with: "h:mm")
    static var ampmFormatter: DateFormatter = DateFormatter.formatter(with: "a")
}

extension Date {
    var hmsRemoved: Date? {
        return Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: self)
    }
    
=======
    static var timeFormatter: DateFormatter = formatter(with: "h:mm")
    static var ampmFormatter: DateFormatter = formatter(with: "a")
}

extension Date {
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
    static func before(_ days: Int) -> Date {
        let timeInterval = Double(days) * 24 * 60 * 60
        return Date(timeIntervalSinceNow: -timeInterval)
    }
}

<<<<<<< HEAD
extension Array where Element: Hashable {
    func unique() -> [Element] {
        var result: [Element] = []
        var set: Set<Element> = []
        
        for item in self {
            if set.contains(item) == false {
                set.insert(item)
                result.append(item)
            }
=======
extension Date {
    var hmsRemoved: Date? {
        return Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: self)
    }
}

extension Array where Element: Hashable {
    func unique() -> [Element] {
        var set: Set<Element> = []
        var result: [Element] = []
        
        for element in self where set.contains(element) == false {
            set.insert(element)
            result.append(element)
>>>>>>> 0a422a4121992c4553e804929bc896013caf7581
        }
        
        return result
    }
}
