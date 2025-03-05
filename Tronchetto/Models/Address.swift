//
//  Address.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import Foundation

struct Address: Codable {
    var CEP: String
    var country: String
    var state: String
    var city: String
    var district: String
    var number: String
    var street: String
    var complement: String
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.CEP = try container.decode(String.self, forKey: .CEP)
        self.country = try container.decode(String.self, forKey: .country)
        self.state = try container.decode(String.self, forKey: .state)
        self.city = try container.decode(String.self, forKey: .city)
        self.district = try container.decode(String.self, forKey: .district)
        self.number = try container.decode(String.self, forKey: .number)
        self.street = try container.decode(String.self, forKey: .street)
        self.complement = try container.decode(String.self, forKey: .complement)
    }
    init() {
        self.CEP = ""
        self.country = ""
        self.state = ""
        self.city = ""
        self.district = ""
        self.number = ""
        self.street = ""
        self.complement = ""
    }
}
