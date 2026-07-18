//
//  Forgenavbar.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import SwiftUI

struct ForgeNavBar: View {
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            NavigationStack {
                ForgeAccessCode(member: MockUserData.member)
            }
            .tabItem {
                Image(systemName: "ticket.fill")
                Text("Entry Pass")
            }
            .tag(0)
            
            
            NavigationStack {
                ForgeHome(forgeData: MockGymData.forgeData)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(1)
            
            
            NavigationStack {
                ForgeMemberPage(member: MockUserData.member)
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Membership")
            }
            .tag(2)
        }
    }
}

#Preview {
    ForgeNavBar()
}
