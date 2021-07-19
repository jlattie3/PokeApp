//
//  Berry.swift
//  PokéApp
//
//  Created by Jacob Lattie on 7/18/21.
//

import Foundation

struct Berry: Codable {
    var id: Int
    var name: String
    var growth_time: Int
    var max_harvest: Int
    var natural_gift_power: Int
    var size: Int
    var smoothness: Int
    var soil_dryness: Int
//    var firmness: String
//    var flavors
//    var item
//    var natural_gift_type
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case growth_time
        case max_harvest
        case natural_gift_power
        case size
        case smoothness
        case soil_dryness
    }
}
