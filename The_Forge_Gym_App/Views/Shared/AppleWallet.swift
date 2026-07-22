//
//  AppleWallet.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI
import PassKit

struct AppleWallet: UIViewRepresentable {
    
    func makeUIView(context: Context) -> PKAddPassButton {
        let button = PKAddPassButton(
            addPassButtonStyle: .black
        )
        
        return button
    }
    
    func updateUIView(_ uiView: PKAddPassButton, context: Context) {
        
    }
}

#Preview {
    AppleWallet()
        .frame(width: 300, height: 50)
}
