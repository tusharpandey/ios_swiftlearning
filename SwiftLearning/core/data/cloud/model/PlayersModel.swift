// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let data: [Datum]
    let meta: Meta
}

// MARK: - Datum
struct Datum: Codable {
    let id: Int
    let firstName: String
    let heightFeet, heightInches: Int?
    let lastName, position: String
    let team: Team
    let weightPounds: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case heightFeet = "height_feet"
        case heightInches = "height_inches"
        case lastName = "last_name"
        case position, team
        case weightPounds = "weight_pounds"
    }
}

// MARK: - Team
struct Team: Codable {
    let id: Int
    let abbreviation, city: String
    let conference: Conference
    let division, fullName, name: String

    enum CodingKeys: String, CodingKey {
        case id, abbreviation, city, conference, division
        case fullName = "full_name"
        case name
    }
}

enum Conference: String, Codable {
    case east = "East"
    case west = "West"
}

// MARK: - Meta
struct Meta: Codable {
    let totalPages, currentPage, nextPage, perPage: Int
    let totalCount: Int

    enum CodingKeys: String, CodingKey {
        case totalPages = "total_pages"
        case currentPage = "current_page"
        case nextPage = "next_page"
        case perPage = "per_page"
        case totalCount = "total_count"
    }
}
