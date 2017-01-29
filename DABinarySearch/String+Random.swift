//
//  String+Random.swift
//  DABinarySearch
//
//  Created by Dejan on 29/01/2017.
//  Copyright © 2017 Dejan. All rights reserved.
//

import Foundation

extension String {
    
    static func randomString(length: Int) -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        
        var result = ""
        
        for _ in 0..<length {
            let randomIndex = Int(arc4random_uniform(UInt32(characters.characters.count)))
            let characterIndex = characters.index(characters.startIndex, offsetBy: randomIndex)
            result += String(characters[characterIndex])
        }
        
        return result
    }
}
