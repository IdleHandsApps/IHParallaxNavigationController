//
//  IHParallaxViewController.m
//  IHParallaxNavigationController
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

#import "IHParallaxNavigationController.h"
#import "UIViewController+TransparentNavBar.h"

@interface IHParallaxNavigationController ()
@end

static IHParallaxNavigationController *_sharedParallaxNavController = nil;

@implementation IHParallaxNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self initialize];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:(NSCoder *)aDecoder];
    if (self) {
        // Custom initialization
        [self initialize];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
        [self initialize];
    }
    return self;
}

- (void)initialize {
    self.currentParallaxLevel = 0;
    self.totalParallaxLevels = 2; // change if more than 2
    self.parallaxSpan = 30;
    _sharedParallaxNavController = self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setParallaxImage:(UIImage *)image {
    
    CGRect frame = self.view.bounds;
    frame.size.width += self.parallaxSpan*self.totalParallaxLevels;
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = image;
    [imageView setContentMode:UIViewContentModeScaleAspectFill];
    
    self.parallaxView = imageView;
}

- (void)setParallaxView:(UIView *)parallaxView {
    if (_parallaxView != nil && _parallaxView.superview != nil) {
        [_parallaxView removeFromSuperview];
    }
    _parallaxView = parallaxView;
    
    [self.view addSubview:_parallaxView];
    [self.view sendSubviewToBack:_parallaxView];
}

- (void)setFloatingView:(UIView *)floatingView {
    if (_floatingView != nil && _floatingView.superview != nil) {
        [_floatingView removeFromSuperview];
    }
    _floatingView = floatingView;
    
    _floatingView.userInteractionEnabled = NO;
    [self.view addSubview:_floatingView];
    [self.view sendSubviewToBack:_floatingView];
    [self.view sendSubviewToBack:_parallaxView];
}

- (void)performParallaxAnimation:(int)navLevel {
    int parallaxDistance = navLevel * self.parallaxSpan;
    float duration = navLevel > self.currentParallaxLevel ? 0.4 : 0.2;
    
    if (self.currentParallaxLevel != navLevel) {
        [UIView animateWithDuration:duration delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
            self.parallaxView.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, -parallaxDistance, 0);
        } completion:^(BOOL finish){}];
    }
    
    self.currentParallaxLevel = navLevel;
}

#pragma - mark static methods

+ (void)setParallaxImage:(UIImage *)image {
    [_sharedParallaxNavController setParallaxImage:image];
}
+ (void)setParallaxView:(UIView *)parallaxView {
    [_sharedParallaxNavController setParallaxView:parallaxView];
}
+ (void)setFloatingView:(UIView *)floatingView {
    [_sharedParallaxNavController setFloatingView:floatingView];
}

@end
