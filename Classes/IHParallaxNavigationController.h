//
//  IHParallaxViewController.h
//  IHParallaxNavigationController
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IHParallaxNavigationController : UINavigationController

// dont change manually
@property (nonatomic) int currentParallaxLevel;

// setting the following two properties will ensure your parallax view is scaled correctly to fit
@property (nonatomic) int totalParallaxLevels; // set to total number of screens you're using
@property (nonatomic) int parallaxSpan;

@property (nonatomic, strong) UIView *floatingView; // you can provide your own custom floating fixed view
@property (nonatomic, strong) UIView *parallaxView; // you can provide your own custom parallax view
- (void)setParallaxImage:(UIImage *)image; // quickly set a UIImage which will be the parallax view

// static setters for the above properties
+ (void)setParallaxImage:(UIImage *)image;
+ (void)setParallaxView:(UIView *)parallaxView;
+ (void)setFloatingView:(UIView *)floatingView;
+ (void)setTotalParallaxLevels:(int)totalParallaxLevels;
+ (void)setParallaxSpan:(int)parallaxSpan;

@end
