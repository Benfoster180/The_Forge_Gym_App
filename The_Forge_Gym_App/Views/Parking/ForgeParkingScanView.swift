//
//  ForgeParkingScanView.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

//
//  ForgeParkingScanView.swift
//  The_Forge_Gym_App
//

import SwiftUI
import PassKit

struct ForgeParkingScanView: View {
    
    var body: some View {
        ZStack {
            
            Color("ForgeBlack")
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Text("Parking Scan")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                Text("Scan barcode at Parking Machine.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                
                ForgeBarcodeView(member: MockUserData.member)
                
                AppleWallet()
                    .frame(height: 50)
                    .padding()
                
                
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ForgeParkingScanView()
}
