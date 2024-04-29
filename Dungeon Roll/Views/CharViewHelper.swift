//
//  CharViewHelper.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//
//  this view controls how the characters can be represented. We only use one character as preview data and other pieces of code will iterate through to create multiple cards as needed. Make changes here and then validate by using the preview on LaunchView

import Foundation

import SwiftUI

struct CharView: View {
    let char: Character
    var body: some View {
        HStack{
            
            Text(char.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
                .textCase(.uppercase)
                .padding()
               
            Spacer()
           
            Text("Lvl: \(char.level)")
                .padding()
                    //display stat data??
                    //should it even be a map?
                    //Text((char.attrbs))
        }
    }
}

struct CharView_Previews: PreviewProvider {
    static var char = Character.sampleData[0]
    static var previews: some View {
        CharView(char: char)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
