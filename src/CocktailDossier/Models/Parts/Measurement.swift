//
//  Measurement.swift
//  CocktailDossier
//
//  Created by Jake Lee on 6/13/24.
//

import Foundation
import SwiftData

public enum UnitOfMeasurement: Codable {
    case 
        Milliliter,
        Liter,
        Teaspoon,
        Tablespoon,
        Ounce,
        Cup,
        Pint,
        Quart,
        Gallon
}

@Model
public class Measurement {
    public var wholeNumber: Int32
    public var fractionNumerator: Int32
    public var fractionDenominator: Int32
    public var unit: UnitOfMeasurement
    
    init(wholeNumber: Int32, fractionNumerator: Int32, fractionDenominator: Int32, unit: UnitOfMeasurement) {
        self.wholeNumber = wholeNumber
        self.fractionNumerator = fractionNumerator
        self.fractionDenominator = fractionDenominator
        self.unit = unit
    }
}
