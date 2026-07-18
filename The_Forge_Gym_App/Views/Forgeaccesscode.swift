//
//  Forgeaccesscode.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import SwiftUI

struct ForgeAccessCode: View {
    let member: Member
    var body: some View {
        ZStack{
            Color("ForgeBlack")
                .ignoresSafeArea()
            VStack{
                Forgeheader()
                
                
                Spacer()
                VStack(spacing: 20) {

                    Spacer()
                    Text("Welcome \(member.firstName)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)

                    QRCodeView()

                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                Spacer()

                
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
        
    }
}

#Preview {
    ForgeAccessCode(member: MockUserData.member)
}
