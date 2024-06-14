//
//  Ingredient.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import Foundation
import SwiftData

@Model
public class Ingredient {
    public var name: String
    public var measurement: Measurement
    
    init(name: String, measurement: Measurement) {
        self.name = name
        self.measurement = measurement
    }
}
