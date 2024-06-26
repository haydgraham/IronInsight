//
//  IronInsightApp.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/9/24.
//

import SwiftUI
import SwiftData

@main
struct IronInsightApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Exercise.self)
    }
}
