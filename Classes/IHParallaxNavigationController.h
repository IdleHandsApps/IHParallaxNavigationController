//
//  IHParallaxViewController.h
//  IHParallaxNavigationController
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IHParallaxViewController.h"

@interface IHParallaxNavigationController : UINavigationController <IHParallaxDelegate>

@property (nonatomic) int currentParallaxLevel;
@property (nonatomic) int totalParallaxLevels; // set to total number of screens you're using
@property (nonatomic) int parallaxSpan;

@property (nonatomic, strong) UIView *parallaxView; // you can provide your own custom parallax view
@property (nonatomic, strong) UIView *floatingView; // you can provide your own custom floating fixed view

- (void)setParallaxImage:(UIImage *)image;
- (void)performParallaxAnimation:(int)navLevel;

// static setters
+ (void)setParallaxImage:(UIImage *)image;
+ (void)setParallaxView:(UIView *)parallaxView;
+ (void)setFloatingView:(UIView *)floatingView;

@end
