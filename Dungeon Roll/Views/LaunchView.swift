//
//  ContentView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI

struct LaunchView: View {
    
    @Binding var chars: [Character]
    
    var body: some View {
        VStack{
            Text("Dungeon Roll")
                .font(.title)
            NavigationStack{
                //List{
                /*Text("Characters")
                 .fontWeight(.bold)
                 .font(.title)
                 .fontDesign(.rounded)
                 .padding()
                 */
                List($chars){$char in
                    NavigationLink(destination: CharacterDetailView(char: $char)
                    ){
                        CharView(char: char)
                    }
                    
                }
                .toolbar {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            
        }
    }
}

    

    

        
        


    
struct LaunchView_Previews: PreviewProvider {
        static var previews: some View {
            LaunchView(chars: .constant(Character.sampleData))
        }
    }

