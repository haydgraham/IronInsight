//
//  ExercisesView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/15/24.
//

import SwiftUI

struct Exercise: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

let dummyExercises = [
    Exercise(name: "Push Up", description: "An upper body exercise."),
    Exercise(name: "Squat", description: "A lower body exercise."),
    Exercise(name: "Pull Up", description: "An upper body exercise."),
    Exercise(name: "Lunge", description: "A lower body exercise."),
    Exercise(name: "Plank", description: "A core exercise.")
]

struct ExercisesView: View {
    var exercises = dummyExercises
    
    var body: some View {
        NavigationStack {
            List(exercises) { exercise in
                VStack(alignment: .leading) {
                    Text(exercise.name)
                        .font(.headline)
                    Text(exercise.description)
                        .font(.subheadline)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Exercises")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Exercise") {
                        print("Pressed")
                    }
                }
            }
        }
    }
}

#Preview {
    ExercisesView()
}
