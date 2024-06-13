//
//  Item.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
