//
//  ContentView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/9/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @State private var path = [Exercise]()
    
    
    var body: some View {
            VStack {
                CustomTabView()
            }
        }
    }




#Preview {
    ContentView()
}


