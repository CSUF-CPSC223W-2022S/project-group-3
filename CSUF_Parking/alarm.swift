//
//  alarm.swift
//  CSUF_Parking
//
//  Created by csuftitan on 2/22/22.
//

import Foundation

struct alarm {
    var date: Date = Date()
    var enabled: Bool = false
    var number = 0
    
    
    init(Date:Date, enabled:Bool, number:Int){
            self.date = Date
            self.enabled = enabled
            self.number = number
        
        }
    
    init() {
        number = 1
    }
    
    init(_ numberParam: Int) {
        number = numberParam
    }
    
    
}
