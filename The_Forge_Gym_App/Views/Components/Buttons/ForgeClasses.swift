//
//  ForgeClasses.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeClasses: View {

    var body: some View {
        Rectangle()
            .fill(Color.white.opacity(0.05))
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

        ForgeClasses()
            .frame(width: 200, height: 160)
    }
}
