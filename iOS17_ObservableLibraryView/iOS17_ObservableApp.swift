//
//  iOS17_ObservableApp.swift
//  iOS17_Observable
//
//  Created by ing.conti on 13/07/23.
//

import SwiftUI

@main
struct BookReaderApp: App {
    @State private var library = Library()


    var body: some Scene {
        WindowGroup {
            LibraryView()
                .environment(library)
        }
    }
}
