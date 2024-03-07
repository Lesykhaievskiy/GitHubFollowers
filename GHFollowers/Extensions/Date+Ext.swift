//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Олексій Гаєвський on 06.03.2024.
//

import Foundation


extension Date {
    
    
    func convertToMonthYearFormat() -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MMM yyyy"
        return dateFormater.string(from: self)
    }
    
}
