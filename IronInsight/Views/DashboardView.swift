//
//  DashboardView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/15/24.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Text("Dashboard")
            ChartView()
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Log bodyweight")
            })
            .sheet(isPresented: $showSheet) {
                LogBodyweightView()
                    .presentationDetents([.medium, .large])
            }
            Spacer()
        }
    }
}

#Preview {
    DashboardView()
}
