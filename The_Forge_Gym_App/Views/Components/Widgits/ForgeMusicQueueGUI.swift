//
//  ForgeMusicQueueGUI.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 21/07/2026.
//

import SwiftUI

struct ForgeSongQueue: View {
    var body: some View {
        VStack(spacing: 0) {

            Text("Songs in the Queue:")
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

        ForgeSongQueue()
    }
}
