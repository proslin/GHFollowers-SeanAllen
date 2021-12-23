//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Prosvetova Lina on 23.12.2021.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
