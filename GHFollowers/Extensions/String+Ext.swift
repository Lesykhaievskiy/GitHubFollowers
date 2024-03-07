//
//  String+Ext.swift
//  GHFollowers
//
//  Created by Олексій Гаєвський on 06.03.2024.
//

import Foundation


extension String {
    
    func convertToDate() -> Date? {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale =  Locale(identifier: "uk_UA")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    
    func convertToDisplayFormat() -> String {
        guard let date = convertToDate() else { return "N/A" }
        return date.convertToMonthYearFormat()
    }

}
