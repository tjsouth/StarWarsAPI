//
//  Character.swift
//  StarWars2
//
//  Created by Tim South on 11/16/22.
//

import Foundation

struct Character: Codable {
    let name, height, mass, hairColor: String?
    let skinColor, eyeColor, birthYear, gender: String?
    let homeworld: String?
    let films, species, vehicles, starships: [String]
    let created, edited: String?
    let url: String?

    
}
