//
//  WeatherData.swift
//  CSUF_Parking
//
//  Created by Kevin on 5/7/22.
//

import Foundation

struct WeatherData: Codable {
    
    let location: LocationData
    let current: CurrentData
}
