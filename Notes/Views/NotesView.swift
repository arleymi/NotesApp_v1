//
//  NotesView.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import SwiftUI

struct NotesView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First", isMarked: false),
        ItemModel(title: "Second", isMarked: true),
        ItemModel(title: "Third", isMarked: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Notes 📋")
        .navigationBarItems(leading: EditButton(), trailing:
            NavigationLink("Add", destination: AddView())
        )
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NotesView()
        }
    }
}


