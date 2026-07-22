//
//  Forgememberpage.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import SwiftUI

struct ForgeMemberPage: View {
    let member: Member
    var body: some View {
        ZStack {
            Color("ForgeBlack")
                .ignoresSafeArea()
            
            VStack {
                Forgeheader()
                
                HStack(spacing: 15) {
                    Image(member.memberphoto)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 75, height: 75)
                        .clipShape(Circle())

                    VStack(alignment: .leading, spacing: 4) {
                        HStack{
                            Text(member.firstName)
                            Spacer()
                            Text("Member Since: \(member.joinDate)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                        HStack{
                            Text(member.lastName)
                            Spacer()
                            Text("\(member.membershipType) Member")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                    .foregroundColor(Color("ForgeYellow"))
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
        }
    }
}

#Preview {
    ForgeMemberPage(member: MockUserData.member)
}
