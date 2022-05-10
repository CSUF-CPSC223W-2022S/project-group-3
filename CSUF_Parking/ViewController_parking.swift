//
//  ViewController_parking.swift
//  CSUF_Parking
//
//  Created by Kevin on 5/9/22.
//

import UIKit

class ViewController_parking: UIViewController {
    
    
    @IBOutlet var labelA: UILabel!
    
    @IBOutlet var labelB: UILabel!
    
    //var numbers = Array(1990...2000)
    var timer: Timer?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { [self] timer in
            
            //let index1 = Int(arc4random_uniform(UInt32(self.numbers.count)))
            //let index2 = Int(arc4random_uniform(UInt32(self.numbers.count)))
            
            //let numberA = self.numbers.remove(at: index1)
            //let numberB = self.numbers.remove(at: index2)
            
            
            //self.labelA.text = "\(numberA)"
        
        
            //self.labelB.text = "\(numberB)"
            
            let randomNumber1 = Int.random(in: 1990...2000)
            let randomNumber2 = Int.random(in: 1990...2000)
            
            
            
            self.labelA.text = String(randomNumber1)
            self.labelB.text = String(randomNumber2)

        }
    }

}
