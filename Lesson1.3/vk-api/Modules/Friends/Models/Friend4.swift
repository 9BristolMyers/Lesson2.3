//
//  Friend4.swift
//  Lesson1.3Tests
//
//  Created by Владимир Рузавин on 10/28/21.
//

import Foundation
import SwiftyJSON

struct Friend4: Codable {
    let id: Int
    let lastName: String
    let trackCode, firstName: String
    let photo100: String
    
    var fullName: String {
        firstName + lastName
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case lastName = "last_name"
        case firstName = "first_name"
        case photo100 = "photo_100"
    }
}



