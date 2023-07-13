//
//  Model.swift
//  iOS17_Observable
//
//  Created by ing.conti on 13/07/23.
//

import SwiftUI
import Observation

@Observable class Book: Identifiable {
    internal init(_title: String = "Sample Book Title") {
        self._title = _title
    }
    
    var title = "Sample Book Title"
    
    let id = UUID() // A unique identifier that never changes.
}


@Observable class Library {
    var books: [Book] = [
        Book(_title: "The Great Gatsby"),
        Book(_title: "The Picture of Dorian Gray"),
        Book(_title: "Wuthering Heights")
    ]
}
