//
//  ForgeClassCard.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 21/07/2026.
//
import SwiftUI

struct ForgeClassCard: View {
    let classdata: ClassData
    let isExpanded: Bool


    var body: some View {
        VStack(spacing: 0) {
            
            HStack{
                Text(classdata.classname)
                    .foregroundStyle(Color("ForgeYellow"))
                Spacer()
                
                HStack{
                    VStack{
                        Text(classdata.classdate)
                            .font(.caption)
                            .foregroundStyle(.gray)
                        Text(classdata.classtime)
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    Button {
                        //Text("Class Booking system with pop up sheet soon")
                    } label: {
                        Image(systemName: isExpanded ? "arrowtriangle.down.fill" : "arrowtriangle.forward.fill")
                            .foregroundColor(Color("ForgeYellow"))
                    }
                    .padding(.leading, 20)
                    
                }
                
            }
            .padding()
            

        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(Color.white.opacity(0.05))
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

        ForgeClassCard(
            classdata: MockClassData.classdata[0],
            isExpanded: false
        )
    }
}
