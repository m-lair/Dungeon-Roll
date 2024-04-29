//
//  ContentView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI

struct LaunchView: View {
    let chars: [Character]
    var body: some View {
        
        
        
        Spacer()
        
        VStack {
            Text("DUNGEON ROLL")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title)
                .fontDesign(.rounded)
                .padding()
            
            Spacer()
            ForEach(chars) {char in
                Button(action:{
                    
                }){
                    CharView(char: char)
                }
                
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Text("New Character")
            })
            .padding()
        }
        
        
    }
    
    
    struct LaunchView_Previews: PreviewProvider {
        static var previews: some View {
            LaunchView(chars: Character.sampleData)
        }
    }
}
