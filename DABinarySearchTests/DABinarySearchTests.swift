//
//  DABinarySearchTests.swift
//  DABinarySearchTests
//
//  Created by Dejan on 29/01/2017.
//  Copyright © 2017 Dejan. All rights reserved.
//

import XCTest
@testable import DABinarySearch

class DABinarySearchTests: XCTestCase {
    
    func testExample() {
        runWithMaxElements(maxElements: 1_000)
        runWithMaxElements(maxElements: 10_000)
        runWithMaxElements(maxElements: 100_000)
        runWithMaxElements(maxElements: 1_000_000)
    }
    
    private func runWithMaxElements(maxElements: Int) {
        
        print("================== Testing search with \(maxElements) elements ==================")
        
        var strings = randomStringArray(maxElements: maxElements)
        strings.append("Test String")
        strings.sort()
        
        print("Sequential Search:")
        var stopwatch = Stopwatch()
        var index: Int?
        for i in 0..<strings.count {
            if strings[i] == "Test String" {
                index = i
                break;
            }
        }
        stopwatch.printElapsedTime()
        XCTAssertNotNil(index)
        
        print("Binary Search:")
        stopwatch = Stopwatch()
        let searchIndex = strings.search(element: "Test String")
        stopwatch.printElapsedTime()
        XCTAssertNotNil(searchIndex)
    }
}

private extension DABinarySearchTests {
    
    func randomStringArray(maxElements: Int) -> [String] {
        var result: [String] = []
        
        for _ in 0..<maxElements {
            result.append(String.randomString(length: 10))
        }
        
        return result
    }
}

private class Stopwatch {
    private var date = Date()
    var elapsedTime: TimeInterval {
        return NSDate().timeIntervalSince(date)
    }
    
    func printElapsedTime() {
        print("Elapsed Time (seconds): ", elapsedTime)
    }
}
