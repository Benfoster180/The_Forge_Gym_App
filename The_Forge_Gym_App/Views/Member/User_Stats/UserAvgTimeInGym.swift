//
//  UserAvgTimeInGym.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI

struct AvgTimeInGym: View {
    
    let member: Member
        
    
    var body: some View {
        ZStack {

            Rectangle()
                .fill(Color.white.opacity(0.05))
                .overlay {
                    Rectangle()
                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                }

            VStack(spacing: 4) {

                Text("\(member.AvgtrainingTime) Mins")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color("ForgeYellow"))

                Text("Average\nSession Lengh")
                    .font(.system(size: 10, weight: .semibold))
                    .tracking(1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white.opacity(0.8))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    AvgTimeInGym(member: MockUserData.member)
}
