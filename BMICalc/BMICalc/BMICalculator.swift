//
//  BMICalculator.swift
//  BMICalc
//
//  Created by RMS on 01/04/2025.
//
import Foundation
import UIKit

class BMICalculator{
    static func CalculateBMI(weight:Float,height:Float)->Float
    {
        var bmi:Float=weight/pow(height/100,2)
        if(height == 0){
            bmi = 0
        }
        return bmi;
    }
    
    static func GetBMIColor(weight:Float,height:Float)->UIColor{
        let BMI:Float=CalculateBMI(weight: weight, height: height)
        if (BMI<=16.9 || BMI>=30.0)
        {
            return UIColor.red
        }
        else if (BMI<=18.4 || BMI>=25.0)
        {
            return UIColor.orange
        }
        else
        {
            return UIColor.systemMint
        }
        
        
    }
    
    static func GetBMIMessage(weight:Float,height:Float)->String
    {
        let prefferedLanguage = Locale.preferredLanguages.first ?? "en"
        let languageCode = Locale(identifier: prefferedLanguage).language.languageCode?.identifier ?? "en"
        //let localeFromLanguage = Locale(identifier: languageCode)
        //let tmp = localeFromLanguage as String
        let BMI:Float=CalculateBMI(weight: weight, height: height)
        //let currentLanguage = Locale.current.language.languageCode?.identifier
        if(languageCode == "pl"){
            if(BMI < 16.0){
                return "Jesteś wygłodzony!"
            }
            else if(BMI <= 16.9){
                return "Jesteś wychudzony!"
            }
            else if(BMI <= 18.4){
                return "Masz niedowagę!"
            }
            else if(BMI <= 24.9){
                return "Pożądana masa ciała :)"
            }
            else if(BMI <= 29.9){
                return "Masz nadwagę!"
            }
            else if (BMI <= 34.9){
                return "Masz otyłość I stopnia!"
            }
            else if(BMI <= 39.9){
                return "Masz otyłość II stopnia!"
            }
            else{
                return "Masz otyłość III stopnia!"
            }        }
        else{
            if(BMI < 16.0){
                return "You are severely underweight!"
            }
            else if(BMI <= 16.9){
                return "You are moderately underweight!"
            }
            else if(BMI <= 18.4){
                return "You are mildly underweight!"
            }
            else if(BMI <= 24.9){
                return "Your BMI is within normal range :)"
            }
            else if(BMI <= 29.9){
                return "You are overweight!"
            }
            else if (BMI <= 34.9){
                return "You are mildly obese!"
            }
            else if(BMI <= 39.9){
                return "You are moderately obese!"
            }
            else{
                return "You are severely obese!"
            }        }
        
    }
}
