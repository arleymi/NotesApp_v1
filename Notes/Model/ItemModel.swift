//
//  ItemModel.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import Foundation

// Immutable Struct

struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isMarked: Bool
    
    init(id: String = UUID().uuidString, title: String, isMarked: Bool) {
        self.id = id
        self.title = title
        self.isMarked = isMarked
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isMarked: !isMarked)
    }
}


