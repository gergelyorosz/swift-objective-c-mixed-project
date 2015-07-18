//
//  ComponentObjectiveC.m
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

#import "ComponentObjectiveC.h"

@implementation ComponentObjectiveC

-(NSString*) sayHello: (NSString*) name {
    if([name length] == 0) {
        name = @"World";
    }
    return [NSString stringWithFormat:@"Hello %@!", name];
}

@end
