//
//  MBViewController.m
//  BlockTimer
//
//  Created by Kevin Snow on 03/14/2016.
//  Copyright (c) 2016 Kevin Snow. All rights reserved.
//

#import "MBViewController.h"
#import "BlockTimer.h"


@interface MBViewController ()

@end

@implementation MBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Say hello in 2 seconds");
    
    [BlockTimer timerWithTimeInterval:2.0
                           completion:^(BlockTimer *timer) {
                                                                NSLog(@"Hello world 2 seconds later");
                                                            }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
