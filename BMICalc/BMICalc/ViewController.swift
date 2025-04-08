//
//  ViewController.swift
//  BMICalc
//
//  Created by RMS on 01/04/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        becomeFirstResponder()
        weightLabel.text=String(Int(weightSlider.value))+" kg"
        heightLabel.text=String(Int(heightSlider.value))+" cm"
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake
        {
            goToResultsScreen()
        }
    }

    @IBAction func weightSliderValueChanged(_ sender: Any) {
        let slider=sender as! UISlider
        weightLabel.text=String(Int(slider.value))+" kg"
    }
    
    @IBAction func heightSliderValueChanged(_ sender: Any) {
        let slider=sender as! UISlider
        heightLabel.text=String(Int(slider.value))+" cm"
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        goToResultsScreen()
    }
    
    func goToResultsScreen(){
        let bmi=(BMICalculator.CalculateBMI(weight: weightSlider.value, height: heightSlider.value))
        print(bmi)
        self.performSegue(withIdentifier: "ShowBMIResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="ShowBMIResults"{
            let bmiResultViewContoller=segue.destination as! BMIResultViewController
            let bmi=(BMICalculator.CalculateBMI(weight: weightSlider.value, height: heightSlider.value))

            let bmiNS=NSNumber(value:bmi)
            
            let prefferedLanguage = Locale.preferredLanguages.first ?? "en"
            let languageCode = Locale(identifier: prefferedLanguage).language.languageCode?.identifier ?? "en"
            let localeFromLanguage = Locale(identifier: languageCode)
            
            
            let formatter=NumberFormatter()
            formatter.maximumFractionDigits=1
            formatter.locale=localeFromLanguage
            //print(Locale.current.language.languageCode?.identifier)
            //print(Locale.current)
            print(languageCode)
            let formattedNumber=formatter.string(from: bmiNS)
            bmiResultViewContoller.bmiValue=formattedNumber
            bmiResultViewContoller.bmiInfo=BMICalculator.GetBMIMessage(weight: weightSlider.value, height: heightSlider.value)
            bmiResultViewContoller.bmiTextColor=BMICalculator.GetBMIColor(weight: weightSlider.value, height: heightSlider.value)
            
        }
    }
}

