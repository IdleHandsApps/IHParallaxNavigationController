//
//  UIViewController+TransparentNavBar
//  UIViewController+TransparentNavBar
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

// available from https://github.com/IdleHandsApps/UIViewController-TransparentNavBar
// import with: pod 'UIViewController-TransparentNavBar'

#import "UIViewController+TransparentNavBar.h"

@implementation UIViewController (TransparentNavBar)

- (void)setNavBarColor:(UIColor *)navBarColor {
    static UIImage *shadowImage;
    
    if (navBarColor && CGColorGetAlpha(navBarColor.CGColor) == 0) {
        // if transparent color then use transparent nav bar
        [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        shadowImage = self.navigationController.navigationBar.shadowImage;
        self.navigationController.navigationBar.shadowImage = [UIImage new];
    }
    else if (navBarColor){
        // use custom color
        [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:navBarColor] forBarMetrics:UIBarMetricsDefault];
        self.navigationController.navigationBar.shadowImage = shadowImage;
    }
    else {
        // restore original nav bar color
        [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:[UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1]] forBarMetrics:UIBarMetricsDefault];
        self.navigationController.navigationBar.shadowImage = shadowImage;
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
