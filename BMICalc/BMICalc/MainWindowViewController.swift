//
//  MainWindowViewController.swift
//  BMICalc
//
//  Created by RMS on 08/04/2025.
//

import UIKit

class MainWindowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onShowBMICalculatorClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "ShowBMICalculator", sender: self)
    }
    
    @IBAction func onShowCalorieCalculatorClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "ShowCalorieCalculator", sender: self)
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
