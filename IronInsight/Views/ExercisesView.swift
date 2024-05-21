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
    
    @State private var showSheet: Bool = false
    
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
            .navigationDestination(for: Exercise.self, destination: EditExerciseView.init)
            .toolbar {
                
                Button("Add Exercise",
                       systemImage: "plus",
                       action: {showSheet.toggle()}
                )
                .sheet(isPresented: $showSheet, content: {
                    CreateNewExerciseView()
                })
                
            }
            
        }
    }
    func addExercise() {
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
