//
//  CalendarHelper.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 1/12/22.
//

import Foundation

class CalendarHelper {
    
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    
    func monthYearString(_ date: Date) -> String {
        
        dateFormatter.dateFormat = "LLL yyyy"
        return dateFormatter.string(from: date)
        
    }
    
    func plusMonth(_ date: Date) -> Date {
        
        return calendar.date(byAdding: .month, value: 1, to: date)!
        
    }
    
    func minusMonth(_ date: Date) -> Date {
        
        return calendar.date(byAdding: .month, value: -1, to: date)!
        
    }
    
}
