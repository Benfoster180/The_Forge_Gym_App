//
//  Forgehome.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//
import SwiftUI

struct ForgeHome: View {
    let forgeData: ForgeGymData
    @State private var showingParkingScan = false
    @State private var showingcapcityview = false
    var body: some View {
        ZStack{
            Color("ForgeBlack")
                .ignoresSafeArea()
            VStack(spacing: 0) {

                Forgeheader()
                
                ScrollView{
                    VStack{
                        VStack{
                            HStack {
                                
                                HStack{
                                    Button{
                                        showingcapcityview = true
                                    } label: {
                                        ForgeCapacity(forgeData: forgeData)
                                            .frame(maxWidth: .infinity)
                                    }
  
                                    
                                    Button{
                                        showingParkingScan = true
                                    } label: {
                                        ForgeParkingScan()
                                            .frame(maxWidth: .infinity)
                                    }

                                }
                                
                                
                            }
    
                            ForgeQuote()
                                .frame(maxWidth: .infinity)
                            
                            NavigationLink{
                                ForgeTrainingData(member: MockUserData.member)
                            }label: {
                                ForgeStreak(member: MockUserData.member)
                            }
                            
                        }
                        
                        HStack{
                            NavigationLink{
                                ForgeClasses()
                             
                            }label: {
                                ForgeClassesButton()
                                .frame(maxWidth: .infinity)
                            }
                            
                            NavigationLink{
                                ForgeDealsPage()
                            } label: {
                                ForgeDeals()
                                    .frame(maxWidth: .infinity)
                            }
                        }
                        
                        NavigationLink{
                            ForgeMusicSystem(
                                   forgeData: MockGymData.forgeData,
                                   spotifyData: MockSpotifyData.spotifyData
                               )
                        }label: {
                            ForgeCurrentSong(forgeData: forgeData)
                                .frame(maxWidth: .infinity)
                        }
                        
                    
                        
                        
                    }
                }

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
        .sheet(isPresented: $showingParkingScan) {
            ForgeParkingScanView()
                .presentationDetents([.medium])
            
        }
        
        .sheet(isPresented: $showingcapcityview) {
            Forgecapcityview(
                forgeData: MockGymData.forgeData,
                weeklyTraffic: MockFootTrafficData.weeklyTraffic
            )
                .presentationDetents([.medium])
            
        }

    }
}

#Preview {
    ForgeNavBar()
}
