//
//  Dungeon_RollApp.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI
import SwiftData


@main
struct Dungeon_RollApp: App {
    
    /*
    let container: ModelContainer = {
        let schema = Schema([Character.self])
        let config = ModelConfiguration(<#T##String?#>, schema: <#T##Schema?#>, isStoredInMemoryOnly: <#T##Bool#>, allowsSave: <#T##Bool#>, groupContainer: <#T##ModelConfiguration.GroupContainer#>, cloudKitDatabase: <#T##ModelConfiguration.CloudKitDatabase#>)
        let container = ModelContainer(for: schema, configurations: config)
    }
     */
    let modelContainer: ModelContainer
        
        init() {
            do {
                modelContainer = try ModelContainer(for: Character.self)
            } catch {
                fatalError("Could not initialize ModelContainer")
            }
        }
    
    var body: some Scene {
        WindowGroup {
            LaunchView()
        }
        .modelContainer(modelContainer)
    }
}
