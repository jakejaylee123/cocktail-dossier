//
//  Direction.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import Foundation
import SwiftData

@Model
public class Direction {
    public var number: Int32
    public var desc: String
    
    init(number: Int32, desc: String) {
        self.number = number
        self.desc = desc
    }
}
