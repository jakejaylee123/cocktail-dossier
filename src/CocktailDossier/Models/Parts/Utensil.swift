//
//  Utensil.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import Foundation
import SwiftData

@Model
public class Utensil {
    public var name: String
    
    init(name: String) {
        self.name = name
    }
}
