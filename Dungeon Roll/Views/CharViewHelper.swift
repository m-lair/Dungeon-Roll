//
//  CharViewHelper.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//
//  this view controls how the characters can be represented. We only use one character as preview data and other pieces of code will iterate through to create multiple cards as needed. Make changes here and then validate by using the preview on LaunchView

import Foundation

import SwiftUI

struct CardView: View {
    let char: Character
    let width: CGFloat = 100
    let height: CGFloat = 100
     
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Label("\(char.name)", systemImage: "person")
                    .font(.title)
                    .accessibilityAddTraits(.isHeader)
                    .textCase(.uppercase)
                    .padding(.leading)
                
                
                
                Spacer()
                
                Text("Lvl: \(char.level)")
                    .fontWeight(.bold)
                    .padding()
                    .font(.title)
                
                //display stat data??
                //should it even be a map?
                //Text((char.attrbs))
                //display race/class
            }
            Text("Race:")
                .font(.subheadline)
                .padding(.leading)
            
            Divider()
            Text("abilities/items:")
                .font(.subheadline)
                .padding(.leading)
            
                
                VStack(alignment: .leading){
                    Spacer()
                    HStack(){
                        Spacer()
                        ZStack{
                        Rectangle()
                            .frame(width: width, height: height)
                            VStack{
                                Text("\(char.attrbs.filter({$0.name == "Dex"}))")
                                    .font(.title2)
                                    .colorInvert()
                                Spacer()
                                Text("13")
                                    .font(.title)
                                    .colorInvert()
                                Spacer()
                            }
                            .frame(width: width, height: height)
                            
                            
                            
                        }
                        Rectangle()
                            .frame(width: width, height: height)
                        Rectangle()
                            .frame(width: width, height: height)
                        Spacer()
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Rectangle()
                            .frame(width: width, height: height)
                        Rectangle()
                            .frame(width: width, height: height)
                        Rectangle()
                            .frame(width: width, height: height)
                        Spacer()
                        
                    }
                    Spacer()
                    
                }
                
                
                
                
            
            
            
            
            
        }
        
        
    }
        
}

struct CharView_Previews: PreviewProvider {
    static var char = Character.sampleData[0]
    static var previews: some View {
        CardView(char: char)
           .previewLayout(.fixed(width: 400, height: 400))
        //NewCharacter()
    }
}

