A drop in UINavigationController subclass that uses a parallax effect when pushing and popping view controllers

![alt demo](https://github.com/IdleHandsApps/IHParallaxNavigationController/blob/gh-pages/IHParallaxNavigationControllerDemo.gif)

## Description

IHParallaxNavigationController is a drop in solution to give you a cool parallax effect when pushing and popping view controllers. Its compatible with Storyboards and requires very little code.

In your storyboard, just change the UINavigationController class to IHParallaxNavigationController and your UIViewControllers to IHParallaxViewControllers, then in code set the parallax background image and you are done

IHParallaxNavigationController is a sublass of UINavigationController so all standard animations, transitions and gestures are supported.

## How to install

Add this to your CocoaPods Podfile.
```
pod 'IHParallaxNavigationController'
```

## How to use

Using storyboards:

Change your UINavigationController to a IHParallaxNavigationController
Then change your UIViewControllers to IHParallaxViewControllers
Then just call ```setParallaxImage:(UIImage *)image``` to set the background parallax view

Without storyboards:

Initialise the navigation controller
```objective-c
IHParallaxNavigationController *parallaxNavController = [[IHParallaxNavigationController alloc] initWithRootViewController:rootController];
[parallaxNavController setParallaxImage:[UIImage imageNamed:@"my_img"]];
```

When you add a view controller to the navigation stack, ensure its a subclass of IHParallaxViewController
```objective-c
IHParallaxViewController *parallaxController = [[IHParallaxViewController alloc] init];
[parallaxNavController pushViewController:parallaxController animated:YES];
```

Optional methods    

Set totalParallaxLevels to the maximum number of UIParallaxViewControllers in your navigation stack, to ensure your background parallax view is scaled correctly (default is 2)

Set parallaxSpan to to change the displacement of each transition (default is 30)

Set customNavBar color to: nil=grey, clearColor=transparent, or any UIColor of you choice (default is clearColor)

## Treat yourself to these other libraries of mine

An elegant solution for keeping any UIView visible when the keyboard is being shown https://github.com/IdleHandsApps/IHKeyboardAvoiding

Tap to dismiss the keyboard with IHKeyboardDismissing https://github.com/IdleHandsApps/IHKeyboardDismissing

## Author

* Fraser Scott-Morrison (fraserscottmorrison@me.com)

It'd be great to hear about any cool apps that are using IHParallaxNavigationController

## License 

Distributed under the MIT License

## Do To

* Pull out TransparentNavBar category into a seperate Pod as its really a seperate feature
