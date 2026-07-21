//
//  User.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import Foundation

struct Member: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let membershipType: String
    let joinDate: String
    let carReg: String
    let memberphoto: String
    let vistsThisweek: Int
    let AvgtrainingTime: Int
    let LifeTimeVists: Int
    let Memberranking: Int
    let num_of_classes_booked: String
}

struct ForgeGymData {
    let members_in_gym: Int
    let songplaying: String
    let bandplaying: String
    let albumImage: String
    
}

struct SpotifyData: Identifiable {
    let id = UUID()
    let song_name: String
    let band_name: String
    let album: String
}

struct FootTrafficData: Identifiable {
    let id = UUID()
    let day: String
    let hourlyTraffic: [Int]
}

struct  ClassData: Identifiable {
    let id = UUID()
    let classname: String
    let classdate: String
    let classtime: String
    let classimg: String
}
