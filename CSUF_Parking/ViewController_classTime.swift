//
//  ViewController_classTime.swift
//  CSUF_Parking
//
//
//

import UIKit

class ViewController_classTime: UIViewController {

    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)

    }

    @IBAction func btnSegTapped(_ sender: UISegmentedControl) {
    switch sender.selectedSegmentIndex {
    case 0: datePicker.preferredDatePickerStyle = .compact
    case 1: datePicker.preferredDatePickerStyle = .inline
    case 2: datePicker.preferredDatePickerStyle = .wheels
    default:break
        
    }
}
    @objc
    func dateSelected(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .none
        let date = dateFormatter.string(from: datePicker.date)
        lblDate.text = date
        
    }
}
