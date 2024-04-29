//
//  CharViewHelper.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import Foundation

import SwiftUI

struct CharView: View {
    let char: Character
    var body: some View {
        VStack(alignment: .leading) {
            Text(char.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Text(String(char.level))
                Spacer()
                //display stat data??
                //should it even be a map?
                //Text((char.attrbs))
            }
            .font(.caption)
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var char = Character.sampleData[0]
    static var previews: some View {
        CharView(char: char)
    }
}

