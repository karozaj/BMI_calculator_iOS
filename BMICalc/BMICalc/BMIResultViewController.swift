//
//  BMIResultViewController.swift
//  BMICalc
//
//  Created by RMS on 01/04/2025.
//

import UIKit

class BMIResultViewController: UIViewController {

    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var bmiInfoLabel: UILabel!
    
    
    var bmiValue:String?
    var bmiInfo:String?
    var bmiTextColor:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text=bmiValue
        bmiValueLabel.textColor=bmiTextColor
        bmiInfoLabel.text=bmiInfo
        bmiInfoLabel.textColor=bmiTextColor
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
