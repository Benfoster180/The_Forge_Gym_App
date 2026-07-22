//
//  SpotifyJamQueue.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI

struct ForgeSongQueueItem: View {
    let spotifyData: SpotifyData
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(spotifyData.album)
                .resizable()
                .scaledToFill()
                .frame(width: 45, height: 45)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
            VStack(alignment: .leading, spacing: 3) {
                
                Text(spotifyData.song_name)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.white)
                    .lineLimit(1)
                
                Text(spotifyData.band_name)
                    .font(.system(size: 12))
                    .foregroundColor(.white.opacity(0.6))
                    .lineLimit(1)
            }
            
            Spacer()
            
            Image(systemName: "music.note")
                .foregroundColor(Color("ForgeYellow"))
        }
        .padding(12)
        .frame(maxWidth: .infinity)
        .frame(height: 70)
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
        
        ForgeSongQueueItem(
            spotifyData: MockSpotifyData.spotifyData[0]
        )
        .padding()
    }
}
