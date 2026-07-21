//
//  ForgeUserTrainingData.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI

struct ForgeTrainingData: View {
    @Environment(\.dismiss) var dismiss
    let member: Member
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
                
                ScrollView{
                    VStack
                    {
                        HStack{
                            AvgTimeInGym(member: MockUserData.member)
                                .frame(maxWidth: .infinity)
                            LifeTimeVists(member: MockUserData.member)
                                .frame(maxWidth: .infinity)
                            
                        }  .frame(height: 150)
                        
                        UserRanking(member: MockUserData.member)
                            .frame(maxWidth: .infinity)
                            .frame(height: 150)
                        

                    }
                }
                
  
                Spacer()
                    

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ForgeTrainingData(member: MockUserData.member)
}
