//
//  Member_MockData.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import Foundation

struct MockUserData {

    static let member = Member(
        firstName: "John",
        lastName: "Smith",
        membershipType: "Premium",
        joinDate: "17/07/2025",
        carReg: "ABC 123",
        memberphoto: "memberphoto",
        vistsThisweek: 3,
        AvgtrainingTime: 35,
        LifeTimeVists: 125,
        Memberranking: 10,
        num_of_classes_booked: "5"

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

struct MockSpotifyData {
    
    static let spotifyData: [SpotifyData] = [
        SpotifyData(
            song_name: "Everlong",
            band_name: "Foo Fighters",
            album: "thecolourandtheshape"
        ),
        SpotifyData(
            song_name: "Money",
            band_name: "Pink Floyd",
            album: "dsoa"
        ),
        SpotifyData(
            song_name: "Teardrop",
            band_name: "Massive Attack",
            album: "mezzanine"
        ),
        SpotifyData(
            song_name: "Change",
            band_name: "Deftones",
            album: "inthehouseofflies"
        ),
        SpotifyData(
            song_name: "Alive",
            band_name: "Pearl Jam",
            album: "ten"
        )
    ]
}

struct MockClassData{
    static let classdata: [ClassData] = [
        
        ClassData(
            classname: "SPIN CLASS",
            classdate: "21/07/2026",
            classtime: "6:30pm", 
            classimg: "spinclass"
        ),
        ClassData(
            classname: "YOGA",
            classdate: "25/07/2026",
            classtime: "6:30pm",
            classimg: "yoga"
        )
        
    ]
}

struct MockFootTrafficData {

    static let weeklyTraffic: [FootTrafficData] = [

        FootTrafficData(
            day: "Monday",
            hourlyTraffic: [
                2, 1, 1, 1, 2, 8,
                18, 25, 18, 12, 10, 14,
                18, 22, 20, 25, 40, 65,
                85, 95, 75, 45, 20, 8
            ]
        ),

        FootTrafficData(
            day: "Tuesday",
            hourlyTraffic: [
                2, 1, 1, 1, 3, 10,
                22, 30, 20, 15, 12, 16,
                20, 25, 22, 30, 45, 70,
                90, 105, 85, 50, 25, 10
            ]
        ),

        FootTrafficData(
            day: "Wednesday",
            hourlyTraffic: [
                3, 1, 1, 1, 4, 12,
                25, 35, 25, 18, 15, 20,
                25, 30, 28, 35, 55, 80,
                105, 120, 95, 60, 30, 12
            ]
        ),

        FootTrafficData(
            day: "Thursday",
            hourlyTraffic: [
                3, 2, 1, 1, 5, 15,
                28, 38, 28, 20, 18, 22,
                30, 35, 32, 45, 65, 90,
                120, 135, 110, 70, 35, 15
            ]
        ),

        FootTrafficData(
            day: "Friday",
            hourlyTraffic: [
                4, 2, 1, 2, 6, 18,
                30, 40, 30, 22, 20, 25,
                35, 40, 38, 55, 75, 100,
                130, 150, 140, 90, 50, 20
            ]
        ),

        FootTrafficData(
            day: "Saturday",
            hourlyTraffic: [
                8, 5, 3, 2, 5, 15,
                35, 55, 75, 90, 105, 115,
                120, 125, 110, 100, 95, 105,
                120, 135, 110, 75, 40, 15
            ]
        ),

        FootTrafficData(
            day: "Sunday",
            hourlyTraffic: [
                6, 3, 2, 1, 3, 10,
                25, 45, 65, 80, 90, 100,
                105, 110, 95, 85, 80, 90,
                105, 115, 90, 55, 30, 12
            ]
        )
    ]
}
