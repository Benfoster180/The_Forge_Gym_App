//
//  ForgeMemeberStreak.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeQuote: View {
    var body: some View {
        VStack(spacing: 0) {

            Text("A champion is someone who gets up when they can’t. - Jack Dempsey")
                .font(.system(size: 14, weight: .bold))
                .tracking(2)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)

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

        ForgeQuote()
    }
}
