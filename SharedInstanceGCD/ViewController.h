//
//  ViewController.h
//  SharedInstanceGCD
//
//  Created by zhao on 14-5-11.
//  Copyright (c) 2014年 zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
+ (instancetype)sharedInstance;
+ (instancetype)defaultUtility;
+ (instancetype)sharedViewController;
@end
