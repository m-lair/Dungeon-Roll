//
//  CharacterView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI
import SwiftData

struct CharacterView: View {
    let rows = [
        GridItem(.fixed(100))
    ]
    @State var chars: [Character]
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows){
                ForEach($chars){$char in
                    CardView(char: char)
                        .frame(width: 350, height: 350)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                    
                    
                }
                
            }
            .padding()
        }
        
    }
    
}

    
struct CharacterView_Previews: PreviewProvider {
        static var previews: some View {
            CharacterView(chars:Character.sampleData)
        }
    }
