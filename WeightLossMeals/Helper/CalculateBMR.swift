//
//  CalculateBMR.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 11/12/2023.
//

import Foundation


struct CalculateBMR{


    func calculating(gender: String, weight: String, height: String, age: String) -> String{
        
        let maleNumber = 88.362
        let maleFirstTerm = 13.397 * Double(weight)!
        let maleSecondTerm = 4.799 * Double(height)!
        let maleThirdTerm = 5.677 * Double(age)!
        let femaleNumber = 447.593
        let femaleFirstTerm = 9.247 * Double(weight)!
        let femaleSecondTerm = 3.098 * Double(height)!
        let femaleThirdterm = 4.330 * Double(age)!
        
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
