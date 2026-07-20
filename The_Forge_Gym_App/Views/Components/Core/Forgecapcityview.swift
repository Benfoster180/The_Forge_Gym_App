//
//  Forgecapcityview.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI
import PassKit
struct Forgecapcityview: View {
    
    let forgeData: ForgeGymData
    let weeklyTraffic: [FootTrafficData]

    
    var body: some View {
        ZStack {
            
            Color("ForgeBlack")
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Text("Gym Status ")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ForgeYellow"))
                
                Text("\(forgeData.members_in_gym) Members Training!")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
         
                
                ForgeFootTraffic(weeklyTraffic: MockFootTrafficData.weeklyTraffic)
                
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    Forgecapcityview(
        forgeData: MockGymData.forgeData,
        weeklyTraffic: MockFootTrafficData.weeklyTraffic
    )
}
