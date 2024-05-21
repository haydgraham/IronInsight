//
//  CreateNewExerciseView.swift
//  IronInsight
//
//  Created by Samuel Hayden Graham on 5/21/24.
//

import SwiftUI

struct CreateNewExerciseView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) private var dismiss

    
    @State private var textInput: String = ""
    var body: some View {
        VStack {
            TextField("Exercise Name", text: $textInput)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    let exercise = Exercise(name: textInput)
                    modelContext.insert(exercise)
                    dismiss()
                }
        }
    }
}

#Preview {
    CreateNewExerciseView()
}
