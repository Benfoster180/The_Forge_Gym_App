//
//  ForgeUserTrainingData.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI
import PassKit

struct ForgeUserTrainingData: View {
    
    var body: some View {
        ZStack {
            
            Color("ForgeBlack")
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Text("Data on user training capcity")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Look at how the main app looks we will add a pop up when you click on streak which will show a similar things but like avarge session train time sessions this month etc")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ForgeUserTrainingData()
}
