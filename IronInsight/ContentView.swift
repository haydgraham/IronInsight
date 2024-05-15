//
//  ContentView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationStack {
            CustomTabView()
                .navigationTitle("Dashboard")
            
        }
        
    }
}

#Preview {
    ContentView()
}


