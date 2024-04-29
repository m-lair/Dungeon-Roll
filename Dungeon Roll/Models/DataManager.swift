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
    @Published var attrbs: [Attribute]
    
    init(id: UUID = UUID(), name: String, level: Int, attrbs: [Attribute] ){
        self.id = id
        self.name = name
        self.level = level
        self.attrbs = attrbs
    }
}

extension Character {
    struct Attribute: Identifiable{
        let id:UUID
        var name: String
        var val: Int
        
        init(id: UUID=UUID(), name: String, val: Int){
            self.id = id
            self.name = name
            self.val = val
        /*
         could do it this way orr
        var dex:Int
        var cha:Int
        var con:Int
        var str:Int
        var int:Int
        var wis:Int
        
        
        init(id: UUID = UUID(), dex: Int, cha: Int, con: Int, str: Int, int: Int, wis: Int) {
            self.id = id
            self.dex = dex
            self.cha = cha
            self.con = con
            self.str = str
            self.int = int
            self.wis = wis
            */
        }
    }
}

extension Character {
    static var sampleData: [Character] {
        [
            Character(name:"dookie", 
                      level: 8,
                      attrbs: Attributes(dex: 8, cha: 10, con: 12, str: 16, int: 6, wis: 10)),
            Character(name:"pookie", 
                      level: 2,
                      attrbs: Attributes(dex: 8, cha: 10, con: 12, str: 16, int: 6, wis: 12)),
            Character(name:"wookie", 
                      level: 12,
                      attrbs: Attributes(dex: 8, cha: 10, con: 12, str: 16, int: 6, wis: 12))
        ]
    }
}
