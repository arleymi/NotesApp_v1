//
//  ListRowView.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import SwiftUI

struct ListRowView: View {
    
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isMarked ? "checkmark.circle" : "circle")
                .foregroundColor(item.isMarked ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "first", isMarked: false)
    static var item2 = ItemModel(title: "second", isMarked: false)
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
