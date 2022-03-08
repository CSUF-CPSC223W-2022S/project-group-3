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
    
    
    init(Date:Date, enabled:Bool){
            self.date = Date
            self.enabled = enabled
        
        }
    
    
}
