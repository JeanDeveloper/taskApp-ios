//
//  SampleData.swift
//  Task
//
//  Created by Jean Carlo Chunga Sandoval on 17/01/25.
//

import SwiftData
import SwiftUI

struct SampleData: PreviewModifier {
    
    static func makeSharedContext() async throws -> ModelContainer {
        let schema = Schema([Tareas.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly:true)
        let container = try ModelContainer(for: schema, configurations: [modelConfiguration])
        let task1 = Tareas(
            id: UUID(), nombre: "Task 1", descripcion: "Descricion de la taste d", fecha: .now, estado: .enProgreso
        )
        let task2 = Tareas(
            id: UUID(), nombre: "Task 2", descripcion: "Descricion de la taste d", fecha: .now, estado: .pendiente
        )

        container.mainContext.insert(task1)
        container.mainContext.insert(task2)
        
        return container
        
    }
    
    func body(content:Content, context:ModelContainer) -> some View {
        content.modelContainer(context)
    }
    
}


extension PreviewTrait where T == Preview.ViewTraits {
    @MainActor static var sampleData: Self = .modifier(SampleData())
}
