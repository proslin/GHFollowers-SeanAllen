//
//  User.swift
//  GHFollowers
//
//  Created by Prosvetova Lina on 03.12.2021.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGistc: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
