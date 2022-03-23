
//
//  weather.swift
//  CSUF_Parking
//
//  Created by Kevin on 2/22/22.
//
import Foundation

//let JSON: Data?
//Codable allows decoding JSON data, using JSON example data for now to test
struct weather: Codable {
    
    var temp: Double?
    var humidity: Double?
    
}

struct weatherMain: Codable {
    let main: weather
    
}

func decodeJSONData(JSONData: Data){
    
    do{
        let weatherData = try? JSONDecoder().decode(weatherMain.self, from: JSONData)
        if let weatherData = weatherData{
            let weather = weatherData.main
            print(weather.temp!)
            print(weather.humidity!)
        }
    }
    
}
