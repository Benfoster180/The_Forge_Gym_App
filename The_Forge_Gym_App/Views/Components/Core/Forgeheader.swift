//
//  Forgeheader.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct Forgeheader: View {
    var body: some View {
        VStack(spacing: 0){

            Image("ForgeLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding(.bottom, -50)
            
            Rectangle()
                .fill(Color.gray.opacity(0.25))
                .frame(height: 1)
        }
        .padding(.top, -50)

        
  
        
    }
}

#Preview {
    Forgeheader()
}
