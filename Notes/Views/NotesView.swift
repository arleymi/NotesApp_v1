//
//  NotesView.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import SwiftUI

struct NotesView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
        .environmentObject(ListViewModel())
    }
}


