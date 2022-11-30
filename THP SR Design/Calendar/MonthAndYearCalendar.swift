//
//  MonthAndYearCalendar.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 1/12/22.
//

import SwiftUI

struct MonthAndYearCalendar: View {
    
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        DateScrollerView()
            .environmentObject(dateHolder)
            .padding()
    }
}

struct MonthAndYearCalendar_Previews: PreviewProvider {
    static var previews: some View {
        MonthAndYearCalendar()
    }
}
