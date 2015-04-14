//
//  IHParallaxViewController.h
//  IHParallaxNavigationController
//
//  Created by Fraser Scott-Morrison on 7/04/15.
//  Copyright (c) 2015 Idle Hands. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IHParallaxDelegate <NSObject>

- (void)performParallaxAnimation:(int)navLevel;

@end

@interface IHParallaxViewController : UIViewController

@property (nonatomic, weak) NSObject <IHParallaxDelegate> *parallaxControllerDelegate;
@property (nonatomic) int navLevel;
@property (nonatomic, strong) UIColor *customNavBarColor;

@end
