//
//  NewCharacterView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI
import SwiftData

struct NewCharacterView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    @State private var name: String = ""
    @State private var race: String = ""
    @State private var charClass: String = ""
    @State private var level: Int = 0
    
    @State private var dex: Double = 0
    @State private var int: Double = 0
    @State private var cha: Double = 0
    @State private var str: Double = 0
    @State private var wis: Double = 0
    @State private var con: Double = 0
    var body: some View {
        NavigationStack{
            Form{
                HStack{
                    TextField("Name", text: $name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Picker("Level", selection: $level) {
                        ForEach(0 ..< 21) {i in
                            Text("\(i)")
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(width: 50, height: 100)
                        
                        
                        
                }
                TextField("Race", text: $race)
                TextField("Class", text: $charClass)
                Section{
                    Text("Dexterity")
                    HStack{
                        Slider(value: $dex, in: 0...20, step:1, label: {})
                        Text("\(Int($dex.wrappedValue))")
                        }
                    Text("Constitution")
                    HStack{
                        Slider(value: $con, in: 0...20, step:1, label: {})
                        Text("\(Int($con.wrappedValue))")
                        }
                    Text("Strength")
                    HStack{
                        Slider(value: $str, in: 0...20, step:1, label: {})
                        Text("\(Int($str.wrappedValue))")
                        }
                    Text("Wisdom")
                    HStack{
                        Slider(value: $wis, in: 0...20, step:1, label: {})
                        Text("\(Int($wis.wrappedValue))")
                        }
                    Text("Intelligence")
                    HStack{
                        Slider(value: $int, in: 0...20, step:1, label: {})
                        Text("\(Int($int.wrappedValue))")
                        }
                    Text("Charisma")
                    HStack{
                        Slider(value: $cha, in: 0...20, step:1, label: {})
                        Text("\(Int($cha.wrappedValue))")
                        }
                }
            }
            .navigationTitle("New Character")
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Cancel"){ dismiss()
                    }
                }
    
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Save"){
                        let newChar = Character(name: name, level: level, attrbs: [
                            Attribute(name: "Dex", value: Int(dex)),
                            Attribute(name: "Int", value: Int(int)),
                            Attribute(name: "Cha", value: Int(cha)),
                            Attribute(name: "Con", value: Int(con)),
                            Attribute(name: "Wis", value: Int(wis)),
                            Attribute(name: "Str", value: Int(str))
                        ])
                        context.insert(newChar)
                        
                        try! context.save()
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NewCharacterView()
}
