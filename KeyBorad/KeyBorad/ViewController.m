//
//  ViewController.m
//
//  KeyBorad
//  Created by Upixels_ on 17/6/26.
//  Copyright © 2017年 upixels. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    UITextField *btn = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 100, 60)];
    btn.backgroundColor = [UIColor whiteColor];
    [self.view addSubview: btn];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.view endEditing:YES];
//    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}


@end
