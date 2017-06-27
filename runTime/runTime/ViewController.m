//
//  ViewController.m
//  runTime
//
//  Created by Upixels_ on 17/6/26.
//  Copyright © 2017年 upixels. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    NSLog(@"1:%p", object_getClass(view));//isa -> UIView
    NSLog(@"2:%p", object_getClass(object_getClass(view)));//isa -> UIResponder
    NSLog(@"3:%p", object_getClass(object_getClass(object_getClass(view))));//isa -> NSObject
    NSLog(@"4:%p", object_getClass(object_getClass(object_getClass(object_getClass(view)))));//isa -> NSObject
    
//    Class newClass = objc_allocateClassPair([UIView class], "CustomView", 0);
//    class_addMethod(newClass, @selector(report), (IMP)ReportFunction, "v@:");
//    objc_registerClassPair(newClass);
//    
//    id instanceOfNewClass = [[newClass alloc] init];
//    [instanceOfNewClass performSelector:@selector(ReportFunction)];
}

void ReportFunction(id self, SEL _cmd)
{
    NSLog(@"This object is %p.", self);
    NSLog(@"Class is %@, and super is %@", [self class], [self superclass]);
    
    Class currentClass =[self class];
    for (int i =0; i<5; i++) {
        NSLog(@"Following the isa pointer %d times gives %p", i, currentClass);
        currentClass = object_getClass(currentClass);
    }
    
    NSLog(@"NSObjectt's class is %p", [NSObject class]);
    NSLog(@"NSObject's meta class is %p", object_getClass([NSObject class]));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
