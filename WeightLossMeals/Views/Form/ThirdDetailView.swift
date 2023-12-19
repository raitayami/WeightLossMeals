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
    var displayText: Int {
        
        return (Int(CalculateMaintenance().calculate(activityLevel: activityLevel, bmr: bmr)))
    }
    
    var body: some View {
        
        
        VStack(spacing: 30){
            
            
            HStack {
                Text("Maintenance Calories: ")
                    .bold()
                    .font(.title)
                .padding(.top, 20)
                
                Text(String(displayText))
                    .bold()
                    .font(.title)
                .padding(.top, 20)
            }
            
            
            VStack(spacing: 30){
                
                Text("With your chosen activity level, this is how much you have to eat to maintain your weight.")
                    
                
                Text("Please select below how much weight you would like to lose weekly.")
                    
            }

            
            
            VStack(spacing: 40){
                
                NavigationLink {
                    
                } label: {
                    
                    KGaWeekOption(title: "0.25kg a week", description: String(displayText - 250))
                        .row()
                    
                    
                }
                .modifier(KGaWeekOptionModifier(backgroundColor: .blue))
                
                NavigationLink {
                    
                } label: {
                    
                    KGaWeekOption(title: "0.5kg a week", description: String(displayText - 500))
                        .row()
                 
                }
                .modifier(KGaWeekOptionModifier(backgroundColor: .green))

                
                NavigationLink {
                    
                } label: {
                    
                    KGaWeekOption(title: "0.75kg a week", description: String(displayText - 750))
                        .row()
                    
                }
                .modifier(KGaWeekOptionModifier(backgroundColor: .orange))


                NavigationLink {
                    
                } label: {
                    
                    KGaWeekOption(title: "1.00kg a week", description: String(displayText - 1000))
                        .row()
                }
                .modifier(KGaWeekOptionModifier(backgroundColor: .red))


                
            }
            .padding()
            .tint(.black)
            
            Text("It is recommended that losing 0.4 to 0.8kg a week is the suitable range.")
            
            Text("Ideally you should be consulting your doctor on how much weight to lose. Select at your own risk.")
            
        }
    }
}

#Preview {
    ThirdDetailView(bmr: .constant("42114"))
}
