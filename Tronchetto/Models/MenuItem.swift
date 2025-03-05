//
//  MenuItem.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import Foundation

struct MenuItem: Codable, Identifiable{
    let id: Int
    var name: String
    var price: Double
    let description: String?
    let type: FoodType
}
