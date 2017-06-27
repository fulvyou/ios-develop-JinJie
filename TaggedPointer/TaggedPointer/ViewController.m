//
//  ViewController.m
//  TaggedPointer
//
//  Created by Upixels_ on 17/6/26.
//  Copyright © 2017年 upixels. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber *number1 = @0xFFFFFFFFFFFFFFFF;
    NSNumber *number2 = @2;
    NSNumber *number3 = @3;
    NSNumber *numberFFFF = @(0XFFFF);
    
    NSLog(@"number1 pointer is %p", number1);
    NSLog(@"number2 pointer is %p", number2);
    NSLog(@"number3 pointer is %p", number3);
    NSLog(@"numberFFFF pointer is %p", numberFFFF);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
