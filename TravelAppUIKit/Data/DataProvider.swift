//
//  DataProvider.swift
//  TravelAppUIKit
//
//  Created by Chris Yan on 2022-03-09.
//

import UIKit

class DataProvider {
    
    static var data = [(String, [User])]()
    
    static func mockData() -> [(String, [User])] {
        
        var aSection: [User] = []
        var bSection: [User] = []
        var cSection: [User] = []
        
        aSection.append(
            User(
                image: UIImage(named: "avatar-1"),
                nickName: "Alexander Valley",
                location: "Vancouver",
                age: "29"
            )
        )
        
        aSection.append(
            User(
                image: UIImage(named: "avatar-2"),
                nickName: "Alex Stanton",
                location: "Vancouver",
                age: "32"
            )
        )
        
        
        bSection.append(
            User(
                image: UIImage(named: "avatar-3"),
                nickName: "Brian seif",
                location: "Montreal",
                age: "40"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "avatar-4"),
                nickName: "Benika Stanton",
                location: "Vancouver",
                age: "23"
            )
        )
        
        cSection.append(
            User(
                image: UIImage(named: "avatar-5"),
                nickName: "Benita Stanton",
                location: "Vancouver",
                age: "25"
            )
        )
        
        data = [
            ("A", aSection),
            ("B", bSection),
            ("C", cSection)
        ]
        
        return data
    }
}
