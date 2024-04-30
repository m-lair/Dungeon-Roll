//
//  Dungeon_RollApp.swift
//  Dungeon Roll
//
//  Created by Marcus Lair on 4/28/24.
//

import SwiftUI

@main
struct Dungeon_RollApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView(chars: .constant(Character.sampleData))
        }
    }
}
