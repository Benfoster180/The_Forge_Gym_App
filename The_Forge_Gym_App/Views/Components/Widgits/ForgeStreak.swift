//
//  ForgeStreak.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeStreak: View {
    let member: Member
    var body: some View {
        VStack(spacing: 12) {

            HStack {
                Text("WEEKLY STREAK")
                    .font(.system(size: 12, weight: .bold))
                    .tracking(2)
                    .foregroundColor(.white.opacity(0.8))

                Spacer()

                Text("🔥")
                    .font(.title2)
            }

            HStack(spacing: 8) {
                ForEach(0..<7) { day in
                    Circle()
                        .fill(day < member.vistsThisweek ? Color("ForgeYellow") : Color.white.opacity(0.15))
                        .frame(width: 18, height: 18)
                }
            }

            HStack {
                Text("\(member.vistsThisweek) day streak")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color("ForgeYellow"))

                Spacer()

                Text("THIS WEEK")
                    .font(.caption)
                    .tracking(1)
                    .foregroundColor(.white.opacity(0.6))
            }

        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .frame(height: 140)
        .background(Color.white.opacity(0.05))
        .overlay {
            Rectangle()
                .stroke(Color.white.opacity(0.15), lineWidth: 1)
        }
    }
}

#Preview {
    ZStack {
        Color("ForgeBlack")
            .ignoresSafeArea()

        ForgeStreak(member: MockUserData.member)
    }
}
