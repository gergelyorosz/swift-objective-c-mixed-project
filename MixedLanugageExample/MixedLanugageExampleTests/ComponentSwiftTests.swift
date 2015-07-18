//
//  ComponentSwiftTests.swift
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

import XCTest

class ComponentSwiftTests: XCTestCase {
    
    override func setUp() {
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_sayHello_whenInvokedWithEmptyString_returnsHelloWorld() {
        // given
        let component = ComponentSwift()
        
        // then
        XCTAssertEqual(component.sayHello(""), "Hello World!")
    }
    
    func test_sayHello_whenInvokedWithNonEmptyString_substitutesName() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
