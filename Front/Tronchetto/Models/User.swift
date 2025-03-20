//
//  User.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

import Foundation

struct User: Codable {
    
    let id: String
    var name: String
    var email: String
    var password: String
    var phone: String?
    var roles: [Role]?
    var userAddress: Address?
    
    enum CodingKeys: String, CodingKey {
        case id, name, email, password, phone, roles, userAddress
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(String.self, forKey: .id)
        self.email = try container.decode(String.self, forKey: .email)
        self.name = try container.decode(String.self, forKey: .name)
        self.password = try container.decode(String.self, forKey: .password)
        self.phone = try? container.decode(String?.self, forKey: .phone)
        self.roles = try? container.decode([Role]?.self, forKey: .roles)
        self.userAddress = try? container.decode(Address?.self, forKey: .userAddress)
    }
    
    init(id: String = "", name: String = "", email: String = "", password: String = "", phone: String? = nil, roles: [Role]? = nil, userAddress: Address? = nil) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        self.phone = phone
        self.roles = roles
        self.userAddress = userAddress
    }
}
