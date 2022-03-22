//
//  NotesApp.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import SwiftUI

/* MVVM
 Model - data
 View - UI
 ViewModel - manager
 */

@main
struct NotesApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                NotesView()
            }
        }
    }
}
