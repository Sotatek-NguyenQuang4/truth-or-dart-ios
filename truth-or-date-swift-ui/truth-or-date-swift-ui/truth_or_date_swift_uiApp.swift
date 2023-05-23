//
//  truth_or_date_swift_uiApp.swift
//  truth-or-date-swift-ui
//
//  Created by Quang Nguyễn Như on 21/05/2023.
//

import SwiftUI

@main
struct truth_or_date_swift_uiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
