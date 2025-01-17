//
//  TaskRow.swift
//  Task
//
//  Created by Jean Carlo Chunga Sandoval on 18/01/25.
//

import SwiftUI

struct TareaRow: View {
    let tarea: Tareas
        
    var body: some View {
        VStack(alignment: .leading) {
            Text(tarea.nombre)
                .font(.headline)
            HStack {
                Text(tarea.fecha.formatted(date: .long, time: .omitted))
                Spacer()
                Text(tarea.estado.rawValue)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
        }
    }
}
