//
//  Double+Extensions.swift
//  SwiftData ExpenseTracker
//

import Foundation

extension Double {
    func asRupees() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "INR"
        formatter.currencySymbol = "₹"
        formatter.maximumFractionDigits = 0 // Rupees generally does not use decimal places

        if let formattedString = formatter.string(from: NSNumber(value: self)) {
            return formattedString
        } else {
            return "₹ \(self)"
        }
    }
}
