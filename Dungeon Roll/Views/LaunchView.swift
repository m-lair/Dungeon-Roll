//
//  ContentView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI

struct LaunchView: View {
    
    var chars: [Character]
    var body: some View {
        VStack{
            Text("Dungeon Roll")
                .font(.title)
                .padding()
            CharacterView(chars: chars)
                //List{
                /*Text("Characters")
                 .fontWeight(.bold)
                 .font(.title)
                 .fontDesign(.rounded)
                 .padding()
                 */
            Spacer()
        }
        
    }
}


    

    

        
        


    
struct LaunchView_Previews: PreviewProvider {
        static var previews: some View {
            LaunchView(chars: Character.sampleData)
        }
    }

