//
//  DataManager.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//
// structs for data and preview data

import Foundation

class Character: Identifiable {
    let id: UUID
    var name: String
    @Published var level: Int
    var attrbs: [String : String]
    
    init(id: UUID = UUID(), name: String, level: Int, attrbs: [String : String]) {
        self.id = id
        self.name = name
        self.level = level
        self.attrbs = attrbs
    }
}

class Attributes:Character{
    
}

extension Character {
    static var sampleData: [Character] {
        [
            Character(name:"dookie", level: 8, attrbs:["DEX" : "12", "Char" : "10"]),
            Character(name:"pookie", level: 1, attrbs:["DEX" : "2", "Char" : "20"]),
            Character(name:"wookie", level: 12, attrbs:["DEX" : "24", "Char" : "16"])
        ]
    }
}
