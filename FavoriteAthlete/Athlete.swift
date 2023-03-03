//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Juliana Nielson on 3/3/23.
//

import Foundation

struct Athlete {
    var name: String
    var age: String
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
