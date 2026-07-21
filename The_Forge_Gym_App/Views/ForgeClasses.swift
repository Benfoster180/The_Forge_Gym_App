//
//  ForgeClasses.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI

struct ForgeClasses: View {
    let classdata: [ClassData]
    let member: Member
    @Environment(\.dismiss) var dismiss
    @State private var selectedClass: ClassData?
    @State private var expandedClass: ClassData?

    var body: some View {
        ZStack {
            Color("ForgeBlack")
                .ignoresSafeArea()

            VStack {
                ZStack {
                    Forgeheader()

                    HStack {
                        
                        Button {
                            dismiss() // add the chosen view sheet or not new page for user bookings here
                        } label: {
                            Image(systemName: "arrow.backward")
                                .foregroundColor(Color("ForgeYellow"))
                        }
                        .padding(.leading, 20)

                        Spacer()
                        
                        
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: Int(member.num_of_classes_booked) ?? 0 > 31 ? "calendar" : "\(member.num_of_classes_booked).calendar")
                                .foregroundColor(Color("ForgeYellow"))
                            
                        }.padding(.trailing, 20)
                        .padding(.leading, 20)
                        
                        
                    }
                }

                Spacer()
                ScrollView{
                    VStack {
                        ForEach(classdata) { classItem in
                            Button{
                                selectedClass = classItem
                                expandedClass = classItem
                            }label: {
                                ForgeClassCard(
                                    classdata: classItem,
                                    isExpanded: expandedClass?.id == classItem.id
                                )
                            }
                        }
                    }
                }

                Spacer()
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .top)
        }
        .navigationBarBackButtonHidden(true)
        .sheet(item: $selectedClass) { gymClass in
            ForgeClassBookingView(classdata: gymClass)
                .presentationDetents([.medium])
                .onDisappear {
                    expandedClass = nil
                }
        }

    }
}


#Preview {
    ForgeClasses(
        classdata: MockClassData.classdata,
        member: MockUserData.member
    )
}
