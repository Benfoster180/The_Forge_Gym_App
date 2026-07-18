//
//  ForgeClasses.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeClasses: View {
    var body: some View {
        ZStack{
            Color("ForgeBlack")
                .ignoresSafeArea()
            VStack{
                Forgeheader()
                
                Spacer()
                
                Text("ForgeClasses")
                    .foregroundColor(.blue)
                Spacer()
                    

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ForgeClasses()
}
