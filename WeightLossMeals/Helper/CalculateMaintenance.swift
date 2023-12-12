//
//  CalculateMaintenance.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 12/12/2023.
//

import Foundation
import SwiftUI

struct CalculateMaintenance{
    
    @State var answer = 0.0
    var activityLevel = ""
    var bmr = ""
    
    
    func calculate(activityLevel: String, bmr: String) -> Double {
        
        if (activityLevel == "Little"){
            answer = Double(bmr)! * 1.20
        }
        if (activityLevel == "Low"){
            answer = Double(bmr)! * 1.375
        }
        if (activityLevel == "Moderate"){
            answer = Double(bmr)! * 1.467
        }
        if (activityLevel == "Daily"){
            answer = Double(bmr)! * 1.55
        }
        if (activityLevel == "Active"){
            
            print("----\(Double(bmr)!)")
            answer = Double(bmr)!
            print(">>>>>\(answer)")
            answer = answer * 1.725
            print(answer)
            
        }
        return answer
    }
    
}
