//
//  ContentView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI
import SwiftData


struct LaunchView: View {
    @Environment(\.modelContext) var context
    @State private var isShowingCharSheet = false
    @Query(sort: \Character.id) var chars: [Character]
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
            Button("New Character"){
                isShowingCharSheet = true
            }
            
        }
        .sheet(isPresented: $isShowingCharSheet, content: {
            NewCharacterView()
        })
    }
}


    

    

        
        


    
struct LaunchView_Previews: PreviewProvider {
        static var previews: some View {
            LaunchView()
        }
    }

