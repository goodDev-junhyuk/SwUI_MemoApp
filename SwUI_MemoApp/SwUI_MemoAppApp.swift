//
//  SwUI_MemoAppApp.swift
//  SwUI_MemoApp
//
//  Created by junhyuk on 3/20/24.
//

import SwiftUI

@main
struct SwUI_MemoAppApp: App {
    
    @StateObject var store = MemoStore()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
            
        }
    }
}
