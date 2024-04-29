//
//  ContentView.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        Spacer()
        VStack {
            Text("TITLE")
                .padding()
            Spacer()
            HStack{
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("New Character")
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Continue")
                })
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    LaunchView()
}
