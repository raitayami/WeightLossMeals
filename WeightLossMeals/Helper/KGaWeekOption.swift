//
//  KGaWeekOption.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 19/12/2023.
//

import Foundation
import SwiftUI

struct KGaWeekOption{
    
    
    var title: String
    var description: String
    
    func row() -> some View{
        HStack{
            Text(title)
            Spacer()
            Text("\(description) calories")
        }
        .font(.title3)
        .padding()
    }
}

struct KGaWeekOptionModifier: ViewModifier{
    
    let backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .background(backgroundColor)
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
    
}
