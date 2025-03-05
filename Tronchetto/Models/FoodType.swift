//
//  FoodType.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import Foundation

enum FoodType: Codable, CaseIterable {
    
    case drink
    case pizzas
    case frosty
    case beers
    
    var type: String {
        switch self {
        case .drink:
            return "Bebida"
        case .pizzas:
            return "Pizzas"
        case .frosty:
            return "Frios"
        case .beers:
            return "Alcoólicas"
        }
    }
}
