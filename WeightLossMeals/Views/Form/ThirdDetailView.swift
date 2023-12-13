//
//  ThirdDetailView.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 12/12/2023.
//

import SwiftUI

struct ThirdDetailView: View {
    
    @Binding var bmr: String
    var activityLevel = ""
    @State var maintenance = ""
    var displayText: Double {
        
        return CalculateMaintenance().calculate(activityLevel: activityLevel, bmr: bmr)
    }
    
    var body: some View {
        
        
        VStack{

            Text(String(displayText))
            
        }
    }
}

#Preview {
    ThirdDetailView(bmr: .constant("42114"))
}
