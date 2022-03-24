//
//  ViewController.swift
//  CSUF_Parking
//
//  Created by csuftitan on 2/22/22.
//

import UIKit
import CoreLocation

//Get location


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {
    
    
    let locationManager = CLLocationManager()
    
    var coordinates: CLLocation?
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func setupLocation() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if !locations.isEmpty, coordinates == nil {
            coordinates = locations.first
            //locationManager.stopUpdatingLocation()
            requestWeatherForLocation()
        }
    }
    
    func requestWeatherForLocation() {
        guard let coordinates = coordinates else {
            return
        }

        let longitude = coordinates.coordinate.longitude
        let latitude = coordinates.coordinate.latitude
        
        
        print("\(longitude) | \(latitude)")
    }
   
    
    
    @IBOutlet var table: UITableView!
    
    var models = [Weather]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(HourlyTableViewCell.nib(), forCellReuseIdentifier: HourlyTableViewCell.identifier)
        table.register(WeatherTableViewCell.nib(), forCellReuseIdentifier: WeatherTableViewCell.identifier)
        
        
        table.delegate = self
        table.dataSource = self
        
        setupLocation()
    }
    

    
    


}

struct Weather {
    
}
