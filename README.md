A drop in UINavigationController subclass that uses a parallax effect when pushing and popping view controllers

<!-- ![alt demo](https://github.com/IdleHandsApps/IHKeyboardAvoiding/blob/gh-pages/IHKeyboardAvoidingDemo.gif)-->

## Description

IHParallaxNavigationController is a drop in solution to give you a cool parallax effect when pushing and popping view controllers. Its compatible with Storyboards and requires very little code.

In your storyboard, just change the UINavigationController class to IHParallaxNavigationController and your UIViewControllers to IHParallaxViewController, then in code set the parallax background image and you are done

All animations, transitions and gestures automatically performed by UINavigationControllers are supported by IHParallaxNavigationController as its a subclass.

## How to install

Add this to your CocoaPods Podfile.
```
pod 'IHParallaxNavigationController'
```

## How to use


Optional methods    

## treat yourself to other libraries Ive written

An elegant solution for keeping any UIView visible when the keyboard is being shown https://github.com/IdleHandsApps/IHKeyboardAvoiding
Tap to dismiss the keyboard with IHKeyboardDismissing https://github.com/IdleHandsApps/IHKeyboardDismissing


## Author

* Fraser Scott-Morrison (fraserscottmorrison@me.com)

It'd be great to hear about any cool apps that are using IHParallaxNavigationController

## License 

Distributed under the MIT License

## Do To

* Finish ReadeMe
* Pull out TransparentNavBar into a seperate Pod, as its unrelated really