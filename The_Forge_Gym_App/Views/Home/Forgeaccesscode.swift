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
                VStack{
                    Text("Welcome Back \(member.firstName)")
                    QRCodeView()
                    Text("Scan Code To Enter The Gym")
                }
                .font(.system(size: 14, weight: .bold))
                .foregroundStyle(Color("ForgeYellow"))
                Spacer()

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        
    }
}

#Preview {
    ForgeAccessCode(member: MockUserData.member)
}
