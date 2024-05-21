//
//  ExercisesView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/15/24.
//

import SwiftUI
import SwiftData

struct ExercisesView: View {
    @Query var exercises: [Exercise]
    @Environment(\.modelContext) var modelContext
    
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(exercises) { exercise in
                    NavigationLink(value: exercise) {
                        VStack(alignment: .leading) {
                            Text(exercise.name)
                                .font(.headline)
                        }
                    }
                }
                .onDelete(perform: deleteExercises)
            }
            .navigationTitle("Exercises")
            .toolbar {
                Button("Add Exercise", systemImage: "plus", action : addSample)
            }

        }
    }
    func addSample() {
        let sampleExercise = Exercise(name: "Sample Exercise")
        
        modelContext.insert(sampleExercise)
    }
    
    func deleteExercises(_ indexSet: IndexSet) {
        for index in indexSet {
            let exercise = exercises[index]
            modelContext.delete(exercise)
        }
    }
}

#Preview {
    ExercisesView()
}
