//
//  SpotifyJam.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI

struct SpotifyJamButton: View {
    
    var action: () -> Void = {}
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 10) {
                Image("SpotifyLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)

                Text("Join Spotify Jam")
                    .font(.headline)
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.black)
            .clipShape(Capsule())
        }
        .buttonStyle(.plain)
        .overlay(
            Capsule()
                .stroke(Color.white.opacity(0.3), lineWidth: 1.5)
        )
        
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.2)
            .ignoresSafeArea()

        SpotifyJamButton()
            .padding()
    }
}
