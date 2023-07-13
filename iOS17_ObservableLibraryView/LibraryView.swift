//
//  LibraryView.swift
//  iOS17_Observable
//
//  Created by ing.conti on 13/07/23.
//



import SwiftUI
import Observation



struct LibraryView: View {
    @Environment(Library.self) private var library
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    library.books.append(Book())
                } label: {
                    Image(systemName: "plus.app.fill")
                        .font(.largeTitle)
                }
            }
            
            List(library.books) { book in
                BookView(book: book)
            }
        }
    }
}

struct BookView: View {
    var book: Book
    @State private var isEditorPresented = false
    
    var body: some View {
        HStack {
            Text(book.title)
            Spacer()
            Button("Edit") {
                isEditorPresented = true
            }
        }
        .sheet(isPresented: $isEditorPresented) {
            BookEditView(book: book)
        }
    }
}

struct BookEditView: View {
    @Bindable var book: Book
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack() {
            TextField("Title", text: $book.title)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    dismiss()
                }
                
            Button("Close") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

