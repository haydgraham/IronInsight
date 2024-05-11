//
//  ChartView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/10/24.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    var bodyweightLogs: [BodyweightLog] = [
        .init(weight: 180, date: Date()),
        .init(weight: 190, date: Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date()),
        .init(weight: 200, date: Calendar.current.date(byAdding: .day, value: -14, to: Date()) ?? Date())
    ]

   
    var body: some View {
            Chart(bodyweightLogs) {
                // Add marks here.
                LineMark(x: .value("Date", $0.date), y: .value("Bodyweight(lbs)", $0.weight))
            }
            .frame(height: 200)
            .padding(14)
            .background()
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding()
        
    }
}

#Preview {
    ChartView()
}
