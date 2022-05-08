//
//  ViewController_weather.swift
//  CSUF_Parking
//
//  Created by Kevin on 5/7/22.
//

import UIKit

class ViewController_weather: UIViewController {
    
    
    
    @IBOutlet var updatetimeLabel: UILabel!
    
    
    @IBOutlet var regionLabel: UILabel!
    
    
    @IBOutlet var countryLabel: UILabel!
    
    
    @IBOutlet var temperatureLabel: UILabel!
    
    
    @IBOutlet var windLabel: UILabel!
    
    
    @IBOutlet var humidityLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
      
    }
    
    func fetchData() {
        
        let url = URL(string: "https://api.weatherapi.com/v1/current.json?key=7a373771400d4795b1350152220805&q=92802&aqi=no")
        
        let dataTask = URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            guard let data = data, error == nil else{
            print( "Error")
            return
        }
            
            var fullWeatherData:WeatherData?
            
            do {
                fullWeatherData = try JSONDecoder().decode(WeatherData.self, from: data)
            }
            
            catch {
                
                print("error has occured decoding json")
            }
            
            DispatchQueue.main.async {
                self.updatetimeLabel.text = "Updated: \(fullWeatherData!.current.last_updated)"
                self.regionLabel.text = "Region: \(fullWeatherData!.location.region)"
                self.countryLabel.text = "Country: \(fullWeatherData!.location.country)"
                self.temperatureLabel.text = "Temperature: (Celsius) \(fullWeatherData!.current.temp_c)"
                self.humidityLabel.text = "Humidity: \(fullWeatherData!.current.humidity)"
                self.windLabel.text = "Wind (Km/Hr): \(fullWeatherData!.current.wind_kph)"
                
            }
     
        })
        dataTask.resume()
        
    }
    
    
    
    
    
    


    @IBAction func refreshData(_ sender: Any) {
        
        fetchData()
        
    }
    

}
