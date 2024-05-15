//
//  CustomTabView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/15/24.
//

import SwiftUI

struct CustomTabView: View {
    @State private var showSheet: Bool = false
    var body: some View {
        TabView {
            ChartView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Dashboard")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("History")
                }
            QuickAddView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Quick Add")
                }
            ExercisesView()
                .tabItem {
                    Image(systemName: "dumbbell.fill")
                    Text("Exercises")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    CustomTabView()
}
