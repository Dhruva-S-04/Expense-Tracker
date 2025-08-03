//
//  Date+Extensions.swift
//  SwiftData ExpenseTracker
//

import Foundation

extension Date {
    func asFormattedString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "E, MMM d"
        return formatter.string(from: self)
    }
}
