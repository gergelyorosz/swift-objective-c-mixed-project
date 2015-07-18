//
//  ComponentObjectiveCFromSwiftTests.swift
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

import XCTest

class ComponentObjectiveCFromSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_sayHello_whenInvokedWithEmptyString_returnsHelloWorld() {
        // given
        let component = ComponentObjectiveC()
        
        // then
        XCTAssertEqual(component.sayHello(""), "Hello World!")
    }
    
    func test_sayHello_whenInvokedWithNonEmptyString_substitutesName() {
        // given
        let component = ComponentObjectiveC()
        
        // then
        XCTAssertEqual(component.sayHello("Greg"), "Hello Greg!")
    }
    
}
