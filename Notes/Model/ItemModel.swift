//
//  ItemModel.swift
//  Notes
//
//  Created by Arthur Lee on 22.03.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isMarked: Bool
    
}
