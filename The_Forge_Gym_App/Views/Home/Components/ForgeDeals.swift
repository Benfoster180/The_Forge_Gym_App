//
//  ForgeDeals.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeDeals: View {

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.05))
                .overlay {
                    Rectangle()
                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                    
                    VStack {
                        Image(systemName: "bag.fill")
                            .foregroundColor(Color("ForgeYellow"))
                            .font(.system(size: 35))
                            .padding()
                        
                        Text("Shop Fitness Deals!")
                            .foregroundColor(Color("ForgeYellow"))
                            .font(.system(size: 16, weight: .bold))
                            .tracking(1)
                    }
                }
        }
        .frame(height: 160)
    }
}

#Preview {
    ZStack {
        Color("ForgeBlack")
            .ignoresSafeArea()

        ForgeDeals()
            .frame(width: 200, height: 160)
    }
}
