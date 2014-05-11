//
//  ViewController.m
//  SharedInstanceGCD
//
//  Created by zhao on 14-5-11.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import "ViewController.h"
#import "SharedInstanceGCD.h"

@interface ViewController ()

@end

@implementation ViewController

SHARED_INSTANCE_GCD_USING_BLOCK(^{
    return [[ViewController alloc] init];//可调用其他初始化方法
})

//带函数体的
+ (instancetype)defaultUtility
{
    DEFINE_SHARED_INSTANCE_GCD_USING_BLOCK(^{
        return [[ViewController alloc] init];//可调用其他初始化方法
    })
}

//sharedClassname
SHARED_INSTANCE_GCD_WITH_NAME_USING_BLOCK(ViewController, ^{
    return [[ViewController alloc] init];//可调用其他初始化方法
})
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
