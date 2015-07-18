//
//  ComponentSwiftFromObjectiveCTests.m
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MixedLanugageExampleTests-Swift.h"

@interface ComponentSwiftFromObjectiveCTests : XCTestCase

@end

@implementation ComponentSwiftFromObjectiveCTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_sayHello_whenInvokedWithEmptyString__returnsHelloWorld {
    // given
    ComponentSwift* component = [ComponentSwift new];
    
    // then
    XCTAssertEqualObjects([component sayHello:@""], @"Hello World!");
}

- (void)test_sayHello_whenInvokedWithNonEmptyString_substitutesName {
    // given
    ComponentSwift* component = [ComponentSwift new];
    
    // then
    XCTAssertEqualObjects([component sayHello:@"Tom"], @"Hello Tom!");
}

@end
