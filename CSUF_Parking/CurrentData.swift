//
//  CurrentData.swift
//  CSUF_Parking
//
//  Created by Kevin on 5/7/22.
//

import Foundation

struct CurrentData: Codable {
    
    let last_updated: String
    let temp_c: Float
    let wind_kph: Float
    let humidity: Int
    
    
}
