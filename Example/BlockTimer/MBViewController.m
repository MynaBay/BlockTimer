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
    
    BlockTimer* goodbyeTimer = [BlockTimer timerWithTimeInterval:5.0
                                               completion:^(BlockTimer *timer)
                                                            {
                                                                NSLog(@"Goodbye");
                                                            }];
    NSLog(@"Say hello in 2 seconds");
    
    [BlockTimer timerWithTimeInterval:2.0
                           completion:^(BlockTimer *timer)
                                        {
                                            NSLog(@"Hello world!");
                                            NSLog(@"There are %f seconds on goodbye timer",goodbyeTimer.timeRemaining);
                                        }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
