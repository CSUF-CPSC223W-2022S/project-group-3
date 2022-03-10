//
//  classTime.swift
//  CSUF_Parking
//
//  Created by Janessa Vazquez on 2/23/22.
//

import Foundation


struct classTime {
    struct classTime {
        var hour: Int
        var minute: Int
        var ampm: String
    }

    func getClassTime() -> classTime {
        let time = classTime(hour: 8, minute: 30, ampm: "AM")
        return time
    }
}
