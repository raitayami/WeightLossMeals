//
//  SecondDetailView.swift
//  WeightLossMeals
//
//  Created by Tayami Rai on 10/12/2023.
//

import SwiftUI

struct SecondDetailView: View {
    
    @State private var activityLevel = ""
    
    var body: some View {
        VStack{
            Text("Activity Level")
                .foregroundStyle(.mint)
                .font(.title)
                .bold()
                .italic()
            
            NavigationLink {
                ThirdDetailView()
            } label: {
                ActivityLevelOption(
                    title: "Little/ no exercise",
                    description: "You know you should exercise but don't.",
                    backgroundColor: .gray
                ).row()
            }
            .buttonStyle(PlainButtonStyle())
            
            NavigationLink {
                ThirdDetailView()
            } label: {
                ActivityLevelOption(
                    title: "1-3 times a week",
                    description: "You make sure you go weekly. You try not too miss ou",
                    backgroundColor: .pink
                ).row()
            }
            .buttonStyle(PlainButtonStyle())

     
            NavigationLink {
                ThirdDetailView()
            } label: {
                ActivityLevelOption(
                    title: "4-5 times a week",
                    description: "You have a plan. You want to be consistent. You have some goal hence why you go 4-5 times a week.",
                    backgroundColor: .blue
                ).row()
            }
            .buttonStyle(PlainButtonStyle())
            
            NavigationLink {
                ThirdDetailView()
            } label: {
                ActivityLevelOption(
                    title: "Daily or 3-4 times intense",
                    description: "You have a goal. The workouts are difficult. You are serious about your body.",
                    backgroundColor: .red
                ).row()
            }
            .buttonStyle(PlainButtonStyle())

            NavigationLink {
                ThirdDetailView()
            } label: {
                ActivityLevelOption(
                    title: "Intense 6-7 times a week",
                    description: "You are always active. The workouts are difficult. Your job is active too.",
                    backgroundColor: .green
                ).row()
            }
            .buttonStyle(PlainButtonStyle())

            
     
        }
    }
}

#Preview {
    SecondDetailView()
}
