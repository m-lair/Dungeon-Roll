//
//  CharacterDetailView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/29/24.
//

import SwiftUI

struct CharacterDetailView: View {
    @Binding var char: Character
    var body: some View {
        List {
            Section(header: Text("Character Info")) {
                HStack {
                    Label("\(char.name)", systemImage: "person")
                    Spacer()
                    Text("Lvl: \(char.level)")
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Stats")) {
                ForEach(char.attrbs) { attrb in
                    HStack{
                        Text(String(attrb.name))
                        //Label(attrb.name)
                        Spacer()
                        Text(String(attrb.val))
                    }
                }
            }
            Section(header: Text("History")) {
            }
        }
        
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(char: .constant(Character.sampleData[0]))
    }
}
