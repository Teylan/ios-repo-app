//
//  User.swift
//  ios-api-app
//
//  Created by Brian Bansenauer on 10/5/19.
//  Copyright © 2019 Cascadia College. All rights reserved.
//
class Music: Codable, hasId {
    var id: Int?
    var music_url: String?
    var name: String?
    var description: String?
}
