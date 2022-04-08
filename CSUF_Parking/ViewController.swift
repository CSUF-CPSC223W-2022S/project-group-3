//
//  ViewController.swift
//  CSUF_Parking
//
//  Created by csuftitan on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var classDateTxt: UITextField!
    
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createDatePicker()
    }

    func createDatePicker() {
        datePicker.preferredDatePickerStyle = .wheels
        classDateTxt.textAlignment = .center
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
    
        toolbar.setItems([doneBtn], animated: true)
        classDateTxt.inputAccessoryView = toolbar
        
        classDateTxt.inputView = datePicker
        
        datePicker.datePickerMode = .date
        
    }
    
    @objc func donePressed() {
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .medium
        dateformatter.timeStyle = .none
        classDateTxt.text = "\(datePicker.date)"
        self.classDateTxt.text = dateformatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
}

