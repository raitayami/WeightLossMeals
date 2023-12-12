//
//  ActivityLevelOption.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 12/12/2023.
//

import Foundation
import SwiftUI


struct ActivityLevelOption{
    
    var title: String
    var description: String
    var backgroundColor = Color.blue
    
    func row() -> some View{
        
        ZStack{
            VStack(alignment: .leading){
                Text(title)
                    .foregroundStyle(.white)
                    .font(.title2)
                    .bold()
                    .padding([.top, .leading, .bottom], 10)
                
                Text(description)
                    .padding([.leading, .bottom, .trailing], 15)
                    .font(.caption)
                
            }
            
        }
        .frame(width: 350, alignment: .leading)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(color: .black, radius: 4, x: 0, y: 1)
        .padding()
    }
}
