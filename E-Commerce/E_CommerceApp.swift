//
//  E_CommerceApp.swift
//  E-Commerce
//
//  Created by Michael Hany on 27/11/2023.
//

import SwiftUI

@main
struct E_CommerceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
