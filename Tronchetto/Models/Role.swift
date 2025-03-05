//
//  Role.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

//MARK: Need to improve another things
import Foundation

struct Role: Codable {
    
    var id: String
    var name: String
    var createdAt: String?
    var updateAt: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
    }
    init() {
        self.id = ""
        self.name = ""
    }
}
