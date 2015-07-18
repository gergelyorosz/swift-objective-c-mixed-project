//
//  ComponentObjectiveCTests.m
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComponentObjectiveC.h"

@interface ComponentObjectiveCTests : XCTestCase

@end

@implementation ComponentObjectiveCTests

-(void) setUp {
    [super setUp];
}

-(void) tearDown {
    [super tearDown];
}

- (void)test_sayHello_whenInvokedWithNil_returnsHelloWorld {
    // given
    ComponentObjectiveC* component = [ComponentObjectiveC new];
    
    // then
    XCTAssertEqualObjects([component sayHello:nil], @"Hello World!");
}

- (void)test_sayHello_whenInvokedWithEmptyString__returnsHelloWorld {
    // given
    ComponentObjectiveC* component = [ComponentObjectiveC new];
    
    // then
    XCTAssertEqualObjects([component sayHello:@""], @"Hello World!");
}

- (void)test_sayHello_whenInvokedWithNonEmptyString_substitutesName {
    // given
    ComponentObjectiveC* component = [ComponentObjectiveC new];
    
    // then
    XCTAssertEqualObjects([component sayHello:@"Tom"], @"Hello Tom!");
}

@end
