//
//  FirstDetailView.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 10/12/2023.
//

import SwiftUI

struct FirstDetailView: View {
    
    @State private var gender = "Male"
    @State private var age = ""
    @State private var height = ""
    @State private var weight = ""
    
    let genderChoices = ["Male", "Female"]
    
    @State private var bmr = ""
    
    var body: some View {
        
        VStack{
            
            VStack{
                
                Text("Gender")
                    .bold()
                    .italic()
                    .font(.title2)
                    .foregroundStyle(.mint)
                    .padding(.top, 10)
                
                Picker("", selection: $gender) {
                    ForEach(genderChoices, id: \.self) {
                        Text($0)
                    }
                }
                .tint(.black)
                
                
                Text("Age")
                    .bold()
                    .italic()
                    .font(.title2)
                    .foregroundStyle(.mint)
                    .padding(.top, 10)
                
                TextField("Write your age here...", text: $age)
                    .frame(alignment: .center)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Text("Height (cm)")
                    .bold()
                    .italic()
                    .font(.title2)
                    .foregroundStyle(.mint)
                    .padding(.top, 10)
                
                TextField("Write your height here...", text: $height)
                    .frame(alignment: .center)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Text("Weight (kg)")
                    .bold()
                    .italic()
                    .font(.title2)
                    .foregroundStyle(.mint)
                    .padding(.top, 10)
                
                TextField("Write your weight here...", text: $weight)
                    .frame(alignment: .center)
                    .padding()
                    .multilineTextAlignment(.center)
                
            }
            
            Spacer()
            
            Button(action: {
                bmr =
                "\(CalculateBMR().calculating(gender: gender, weight: weight, height: height, age: age)) calories"
                
                
            }, label: {
                
                Image(systemName: "sum")
                    .foregroundStyle(.white)
                
                Text("Calculate BMR")
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title3)
                
            })
            .buttonStyle(.bordered)
            .background(Color.blue)
            .cornerRadius(10)
            
            
            
            Spacer()
            
            
            VStack{
                Text("BMR:")
                    .bold()
                    .italic()
                    .font(.title2)
                    .foregroundStyle(.mint)
                    .padding(.top, 10)
                
                Text(String(bmr))
                    .padding()
                
            }
            
            Spacer()
            
            NavigationLink{
                SecondDetailView()
            } label: {
                
                
                Text("Next")
                    .foregroundStyle(.green)
                    .font(.title)
                
                Image(systemName: "arrow.right")
                    .foregroundStyle(.green)
            }
            
            
        }
        .padding()
        
    }
    
}

#Preview {
    FirstDetailView()
}