//
//  Forgecapacity.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import SwiftUI

struct ForgeCapacity: View {
    let forgeData: ForgeGymData
    
    var body: some View {
        ZStack {

            Rectangle()
                .fill(Color.white.opacity(0.05))
                .overlay {
                    Rectangle()
                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                }

            VStack(spacing: 4) {

                Text("\(forgeData.members_in_gym)")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color("ForgeYellow"))

                Text("MEMBERS\nIN THE GYM")
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
    ForgeCapacity(forgeData: MockGymData.forgeData)
}
