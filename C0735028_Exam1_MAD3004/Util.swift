//
//  Util.swift
//  C0735028_Exam1_MAD3004
//
//  Created by user on 2018-07-23.
//  Copyright © 2018 RavSingh. All rights reserved.
//

import Foundation

class Util {
    static func getDate(year: Int, month: Int, day: Int) -> Date
    {
        let gc = NSCalendar(calendarIdentifier: .gregorian)
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let birthDate = gc?.date(from: dateComponents)
        return birthDate!
    }
}
