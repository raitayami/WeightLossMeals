//
//  CalculateMaintenance.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 12/12/2023.
//

import Foundation
import SwiftUI

struct CalculateMaintenance{
    
//    @State var answer = 0.0
    var activityLevel = ""
    var bmr = ""
    
    
    func calculate(activityLevel: String, bmr: String) -> Double {
        
        var answer: Double = 0.0
        
        if (activityLevel == "Little"){
            answer = Double(bmr)! * 1.20
        } else if (activityLevel == "Low"){
            answer = Double(bmr)! * 1.375
        } else if (activityLevel == "Moderate"){
            answer = Double(bmr)! * 1.467
        } else if (activityLevel == "Daily"){
            answer = Double(bmr)! * 1.55
        } else if (activityLevel == "Active"){
            answer = Double(bmr)! * 1.725
     
        }
        return answer
    }
    
}
