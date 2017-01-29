//
//  Array+Search.swift
//  DABinarySearch
//
//  Created by Dejan on 29/01/2017.
//  Copyright © 2017 Dejan. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    func search(element: Element) -> Int? {
        
        var low = 0
        var high = count
        var mid = Int(high / 2)
        
        while low < high {
            
            let midElement = self[mid]
            
            if element == midElement {
                return mid
            }
            else if element < midElement {
                high = mid
            }
            else {
                low = mid
            }
            
            mid = (low + high) / 2
        }
        
        return nil
    }
}
