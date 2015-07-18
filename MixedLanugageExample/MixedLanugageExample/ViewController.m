//
//  ViewController.m
//  MixedLanugageExample
//
//  Created by Gergely Orosz on 18/07/2015.
//  Copyright © 2015 GergelyOrosz. All rights reserved.
//

#import "ViewController.h"
#import "MixedLanugageExample-Swift.h"
#import "LabelObjectiveC.h"

@interface ViewController ()

@property (nonatomic, strong, readonly) LabelObjectiveC* labelObjectiveC;
@property (nonatomic, strong, readonly) LabelSwift* labelSwift;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _labelObjectiveC = [[LabelObjectiveC alloc] initWithFrame:CGRectMake(20, 60, 150, 20)];
    _labelSwift = [[LabelSwift alloc] initWithFrame:CGRectMake(20, 100, 150, 20)];
    
    [self.view addSubview:self.labelObjectiveC];
    [self.view addSubview:self.labelSwift];
}

@end
