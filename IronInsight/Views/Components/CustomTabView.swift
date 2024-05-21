//
//  CustomTabView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/15/24.
//

import SwiftUI

struct CustomTabView: View {
    enum Tab {
        case dashboard
        case quickAdd
        case exercises
    }

    @State private var selectedTab: Tab = .dashboard
    @State private var previousSelectedTab: Tab = .dashboard
    @State private var showQuickAddSheet = false

    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
                DashboardView()
                    .tabItem {
                        Image(systemName: "chart.bar.fill")
                        Text("Dashboard")
                    }
                    .tag(Tab.dashboard)

                Text("") // Empty view for the Quick Add tab
                    .tabItem {
                        Image(systemName: "plus.circle.fill")
                        Text("Quick Add")
                    }
                    .tag(Tab.quickAdd)

                ExercisesView()
                    .tabItem {
                        Image(systemName: "dumbbell.fill")
                        Text("Exercises")
                    }
                    .tag(Tab.exercises)
            }
            .onChange(of: selectedTab) { newValue in
                if newValue == .quickAdd {
                    showQuickAddSheet = true
                    // Reset the tab selection to the previous tab
                    selectedTab = previousSelectedTab
                } else {
                    previousSelectedTab = newValue
                }
            }
            .sheet(isPresented: $showQuickAddSheet) {
                QuickAddView()
            }
            
            
        }
    }
}

#Preview {
    CustomTabView()
}
