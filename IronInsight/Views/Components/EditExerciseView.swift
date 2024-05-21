//
//  EditExerciseView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/21/24.
//

import SwiftUI
import SwiftData

struct EditExerciseView: View {
    @Bindable var exercise: Exercise
    
    var body: some View {
        Form {
            TextField("name", text: $exercise.name)
            
        }
        .navigationTitle("Edit Exercise")
        .navigationBarTitleDisplayMode(.inline)


    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Exercise.self, configurations: config)
        
        let example = Exercise(name: "example")
        return EditExerciseView(exercise: example)
            .modelContainer(container)
    } catch {
        fatalError("failed to create moel container")
    }
}
