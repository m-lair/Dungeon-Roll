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
                        Rectangle()
                            .frame(width: width, height: height)
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

struct NewCharacter: View {
     
    @State var name = ""
    @State var level: Int = 1
     
    let attrbNames = ["Dexterity", "Charisma", "Strength", "Wisdom", "Intelligence", "Constitution"]
     
    var attrbs: [Character.Attribute] = []
     
    var body: some View{
        
        NavigationView {
                    Form(content: {
                         Section(header: Text("Basic Info")) {
                              HStack{
                                   TextField("Name", text: $name)
                                   Picker("Lvl:", selection: $level){
                                        ForEach(1..<21) {
                                             Text("\($0)")
                                        }
                                   }
                                   .frame(width: 80.0, height: 10.0)
                              }
                              // Secure field
                         }
                         Section(header: Text("Attribute Info")) {
                              VStack{
                                   ForEach(0..<attrbNames.count, id: \.self) {name in
                                        HStack{
                                             
                                        }
                                        
                                   }
                              }
                        
                        }
                        Section {
                            // Button
                            Button("Save") {
                                // DO SOMETHING
                            }
                        }
                    })
                    .navigationBarTitle("New Character")
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

func validForm(form: NewCharacter){
    
}
