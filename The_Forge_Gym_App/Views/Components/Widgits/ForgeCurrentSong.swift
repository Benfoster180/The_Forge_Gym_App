//
//  ForgeCurrentSong.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeCurrentSong: View {
    let forgeData: ForgeGymData
    
    var body: some View {
        HStack(spacing: 20) {
            
            Image(forgeData.albumImage)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text("NOW PLAYING")
                    .font(.system(size: 10, weight: .bold))
                    .tracking(2)
                    .foregroundColor(Color("ForgeYellow"))
                
                Text(forgeData.songplaying)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                    .lineLimit(1)
                
                Text(forgeData.bandplaying)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(.white.opacity(0.6))
                    .lineLimit(1)
            }
            
            Spacer()
            
            Image(systemName: "waveform")
                .symbolEffect(.variableColor.iterative, options: .repeat(.continuous))
                .foregroundColor(Color("ForgeYellow"))
            
                .font(.system(size: 28))
                .foregroundColor(Color("ForgeYellow"))
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .frame(height: 120)
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
        
        ForgeCurrentSong(forgeData: MockGymData.forgeData)
            .padding()
    }
}
