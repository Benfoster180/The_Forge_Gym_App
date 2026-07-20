//
//  ForgeMusicSystem.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI

struct ForgeMusicSystem: View {
    @Environment(\.dismiss) var dismiss
    let forgeData: ForgeGymData
    let spotifyData: [SpotifyData]

    var body: some View {
        ZStack{
            Color("ForgeBlack")
                .ignoresSafeArea()
            VStack{
                ZStack {
                    Forgeheader()

                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(Color("ForgeYellow"))
                        }
                        .padding(.leading, 20)

                        Spacer()
                    }
                }
                
                Spacer()
                
            
                
                VStack(spacing: 5){
                    ForgeCurrentSong(forgeData: MockGymData.forgeData,)
                    ScrollView{
                        VStack(spacing: 3){
                            ForEach(spotifyData) { song in
                                ForgeSongQueueItem(
                                    spotifyData: song
                                )
                            }

                        }
                    }
                    SpotifyJamButton()
                    Spacer()
                    

                    
                }
      
                

            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ForgeMusicSystem(
        forgeData: MockGymData.forgeData,
        spotifyData: MockSpotifyData.spotifyData
    )
}
