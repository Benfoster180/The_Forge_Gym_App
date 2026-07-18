//
//  ForgeClasses.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeClassesButton: View {

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.white.opacity(0.05))
                .overlay {
                    Rectangle()
                        .stroke(Color.white.opacity(0.15), lineWidth: 1)
                    
                    VStack {
                        Image(systemName: "figure.cooldown")
                            .foregroundColor(Color("ForgeYellow"))
                            .font(.system(size: 35))
                            .padding()
                        
                        Text("Book A Class!")
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

        ForgeClassesButton()
            .frame(width: 200, height: 160)
    }
}
