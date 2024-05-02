//
//  CharacterView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI

struct CharacterView: View {
    @State var chars: [Character]
    var body: some View {
        
        List(chars){char in
            CharView(char: char)
        }
        
    }
}
    
struct CharacterView_Previews: PreviewProvider {
        static var previews: some View {
            CharacterView(chars:Character.sampleData)
        }
    }
