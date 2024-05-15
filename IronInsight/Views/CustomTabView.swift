//
//  CustomTabView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/15/24.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView {
            ChartView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Dashboard")
                }
            ChartView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Quick Add")
                }
            ChartView()
                .tabItem {
                    Image(systemName: "dumbbell.fill")
                    Text("Exercises")
                }
        }
    }
}

#Preview {
    CustomTabView()
}
