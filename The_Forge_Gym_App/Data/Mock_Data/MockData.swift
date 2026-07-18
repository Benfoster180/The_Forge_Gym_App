//
//  Member_MockData.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import Foundation

struct MockUserData {

    static let member = Member(
        id: "12345",
        firstName: "John",
        lastName: "Smith",
        membershipType: "Premium",
        joinDate: "17/07/2026",
        carReg: "ABC 123",
        memberphoto: "memberphoto",
        vistsThisweek: 3
    )

}

struct MockGymData {
    
    static let forgeData = ForgeGymData(
        members_in_gym: 25,
        songplaying: "In My Head",
        bandplaying: "Queens of the Stone Age",
        albumImage: "Album_Cover"
    
    )
}
