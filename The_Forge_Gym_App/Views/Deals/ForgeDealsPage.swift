//
//  ForgeDealsPage.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

//
//  ForgeClasses.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeDealsPage: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color("ForgeBlack")
                .ignoresSafeArea()
            VStack{
                ZStack {
                    Forgeheader()

                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(Color("ForgeYellow"))
                        }
                        .padding(.leading, 20)

                        Spacer()
                    }
                }
                
                Spacer()
                
                Text("ForgeDealsPage")
                    .foregroundColor(.blue)
                Spacer()
                    

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ForgeDealsPage()
}
