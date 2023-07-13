//
//  Model.swift
//  iOS17_Observable
//
//  Created by ing.conti on 13/07/23.
//

import SwiftUI
import Observation

@Observable class Book: Identifiable {
    var title = "Sample Book Title"
    
    let id = UUID() // A unique identifier that never changes.
}


@Observable class Library {
    var books: [Book] = [Book(), Book(), Book()]
}
