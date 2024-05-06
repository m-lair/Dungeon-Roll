//
//  DataManager.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//
// structs for data and preview data

import Foundation
import Observation
import SwiftData

@Model
class Character{
    let id: UUID
    var name: String
    var level: Int
    var attrbs: [Attribute]
    
    init(id: UUID = UUID(), name: String, level: Int, attrbs: [Attribute] ){
        self.id = id
        self.name = name
        self.level = level
        self.attrbs = attrbs
        
    }
    
    
    
}

struct Attribute: Identifiable, Codable, Hashable{
    var id = UUID()
    let name: String
    let value: Int
    
    init(name: String, value: Int) {
        self.name = name
        self.value = value
        
    }
    
}

extension Character {
    static var sampleData: [Character] {
        [
            Character(name:"dookie",
                      level: 8,
                      attrbs: [Attribute(name: "dex", value: 8),
                               Attribute(name: "cha", value: 10),
                               Attribute(name: "con", value: 12),
                               Attribute(name: "str", value: 16),
                               Attribute(name: "int", value: 6),
                               Attribute(name: "wis", value: 10)]),
            //attrbs: Attributes(dex: 8, cha: 10, con: 12, str: 16, int: 6, wis: 10)),
            Character(name:"pookie",
                      level: 2,
                      attrbs: [Attribute(name: "dex", value: 8),
                               Attribute(name: "cha", value: 10),
                               Attribute(name: "con", value: 12),
                               Attribute(name: "str", value: 16),
                               Attribute(name: "int", value: 6),
                               Attribute(name: "wis", value: 10)]),
            //attrbs: Attributes(dex: 8, cha: 10, con: 12, str: 16, int: 6, wis: 12)),
            Character(name:"wookie",
                      level: 12,
                      attrbs: [Attribute(name: "dex", value: 8),
                               Attribute(name: "cha", value: 10),
                               Attribute(name: "con", value: 12),
                               Attribute(name: "str", value: 16),
                               Attribute(name: "int", value: 6),
                               Attribute(name: "wis", value: 10)])
            //attrbs: Attributes(dex: 8, cha: 10, con: 12, str: 16, int: 6, wis: 12))
        ]
    }
}
    

