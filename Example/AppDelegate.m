//
//  AppDelegate.m
//  IHParallaxNavigationController
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

#import "AppDelegate.h"
#import "IHParallaxNavigationController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // set an image for the parallax background
    [IHParallaxNavigationController setParallaxImage:[UIImage imageNamed:@"spacex.jpg"]];
    
    // alternatively set any custom view for the parallax background
    //[IHParallaxNavigationController setParallaxView:[[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds]];
    //self.parallaxView = [[UIView alloc] initWithFrame:self.view.bounds];
    
    // initialize a view that is fixed and floats above the parallax background image
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(8, 60, 300, 50)];
    label.text = @"IHParallax Navigation Controller";
    label.textColor = [UIColor lightGrayColor];
    label.font = [UIFont systemFontOfSize:18];
    [IHParallaxNavigationController setFloatingView:label];
    
    // appearance
    NSDictionary *attributes = @{NSForegroundColorAttributeName:[UIColor colorWithRed:60/255.0 green:154/255.0 blue:188/255.0 alpha:1]};
    [[UIBarButtonItem appearance] setTitleTextAttributes:attributes forState:UIControlStateNormal];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:60/255.0 green:154/255.0 blue:188/255.0 alpha:1]];
    
    return YES;
}

@end
