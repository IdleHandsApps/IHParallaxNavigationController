//
//  UIViewController+TransparentNavBar
//  IHParallaxNavigationController
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

#import "UIViewController+TransparentNavBar.h"

@implementation UIViewController (TransparentNavBar)

- (void)setNavBarColor:(UIColor *)navBarColor {
    
    if (navBarColor && CGColorGetAlpha(navBarColor.CGColor) == 0) {
        // if transparent color then use transparent nav bar
        [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    }
    else if (navBarColor){
        // use custom color
        [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:navBarColor] forBarMetrics:UIBarMetricsDefault];
    }
    else {
        // restore original nav bar color
        [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1]] forBarMetrics:UIBarMetricsDefault];
    }
}

- (UIImage *)imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
