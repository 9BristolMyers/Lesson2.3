//
//  Session.swift
//  Lesson1.3
//
//  Created by Владимир Рузавин on 10/25/21.
//

import Foundation

final class Session {
    
    private init() {}
    
    static let shared = Session()
    
    var token = ""
    var userId = ""
}
