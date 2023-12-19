//
//  CalculateBMR.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 11/12/2023.
//

import Foundation


struct CalculateBMR{


    func calculating(gender: String, weight: String, height: String, age: String) -> String{
        
        let maleNumber = 5.0
        let maleFirstTerm = 10.0 * Double(weight)!
        let maleSecondTerm = 6.25 * Double(height)!
        let maleThirdTerm = 5.0 * Double(age)!
        let femaleNumber = 161.0
        let femaleFirstTerm = 10 * Double(weight)!
        let femaleSecondTerm = 6.25 * Double(height)!
        let femaleThirdterm = 5.0 * Double(age)!
        
        var bmrValue = 0.0
        var answer = ""
        
        if gender == "Male"{
            bmrValue = maleNumber + maleFirstTerm + maleSecondTerm - maleThirdTerm
            answer = String(format:"%.2f", bmrValue)
 
        } else if gender == "Female"{
            bmrValue = femaleNumber + femaleFirstTerm + femaleSecondTerm - femaleThirdterm
            answer = String(format:"%.2f", bmrValue)
        }
        
        return answer
    }
    

    
}
