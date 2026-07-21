//
//  ForgeClassBookingView.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 21/07/2026.
//



import SwiftUI
import PassKit

struct ForgeClassBookingView: View {
    let classdata: ClassData
    var body: some View {
        ZStack {
            
            Color("ForgeBlack")
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                
                Text(classdata.classname)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ForgeYellow"))
                HStack{
                    Text("\(classdata.classtime) - \(classdata.classdate)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("ForgeYellow"))
                }
                
                Image(classdata.classimg)
                    .resizable()
                    .scaledToFit()
                    .padding(50)
                
                ClassBookButton()
                
                
                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    ZStack {
        Color("ForgeBlack")
            .ignoresSafeArea()

        ForgeClassBookingView(
            classdata: MockClassData.classdata[0]
        )
    }
}
