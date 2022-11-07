//
//  LabelObjectiveC.m
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

#import "LabelObjectiveC.h"
#import "MixedLanugageExample-Swift.h"

@implementation LabelObjectiveC

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        ComponentSwift* component = [ComponentSwift new];
        self.text = [component sayHelloWithName:@"Swift"];
    }
    return self;
}

@end
