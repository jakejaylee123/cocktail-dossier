//
//  Recipe.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import Foundation
import SwiftData

@Model
public class Recipe: Identifiable {
    public var id: String
    public var name: String
    public var createdAt: Date?
    public var lastUpdated: Date?
    public var desc: String
    
    public var utensils: [Utensil]
    public var ingredients: [Ingredient]
    public var directions: [Direction]
    
    init(name: String, createdAt: Date?, lastUpdated: Date?, desc: String, utensils: Array<Utensil>, ingredients: Array<Ingredient>, directions: Array<Direction>) {
        self.id = UUID().uuidString
        
        self.name = name
        self.createdAt = createdAt
        self.lastUpdated = lastUpdated
        self.desc = desc
        self.utensils = utensils
        self.ingredients = ingredients
        self.directions = directions
    }
}
