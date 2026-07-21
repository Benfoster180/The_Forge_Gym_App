//
//  ForgeShowAllUsersBookings.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 21/07/2026.
//

import SwiftUI
import PassKit

struct ForgeShowAllUsersBookings: View {
    
    var body: some View {
        ZStack {
            
            Color("ForgeBlack")
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Text("ForgeShowAllUsersBookings")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                

                
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ForgeShowAllUsersBookings()
}
