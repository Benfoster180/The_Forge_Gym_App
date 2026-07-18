//
//  ForgeMemeberStreak.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeSectionTitle: View {
    var body: some View {
        VStack(spacing: 0) {

            Text("SECTION TITLE PLACEHOLDER")
                .font(.system(size: 14, weight: .bold))
                .tracking(2)
                .foregroundColor(.white)

        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
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

        ForgeSectionTitle()
    }
}
