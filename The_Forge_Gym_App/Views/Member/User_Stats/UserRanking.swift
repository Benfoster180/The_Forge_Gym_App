//
//  UserRanking.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 21/07/2026.
//

import SwiftUI

struct UserRanking: View {
    
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
                
                Text("Top")
                    .font(.system(size: 10, weight: .semibold))
                    .tracking(1)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white.opacity(0.8))

                Text("\(member.Memberranking)%")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color("ForgeYellow"))

                Text("Most Vists")
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
    UserRanking(member: MockUserData.member)
}
