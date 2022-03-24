//
//  AddViewController.swift
//  CSUF_Parking
//
//  Created by csuftitan on 3/23/22.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var titleField: UITextField!
    @IBOutlet var bodyField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    public var completion: ((String, String, Date) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSaveButton() {
        if let titleText = titleField.text, !titleText.isEmpty,
           let bodyText = bodyField.text, !bodyText.isEmpty {
            
            let targetDate = datePicker.date
        }
    }

}
