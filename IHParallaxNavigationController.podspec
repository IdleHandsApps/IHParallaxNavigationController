Pod::Spec.new do |s|
  s.name             = 'IHParallaxNavigationController'
  s.version          = '1.2'
  s.summary          = 'IHParallaxNavigationController is a UINavigationController subclass that uses a parallax effect when pushing and popping view controllers'
  s.homepage         = 'https://github.com/IdleHandsApps/IHParallaxNavigationController/'
  s.description      = <<-DESC
                       IHParallaxNavigationController is a drop in solution to give you a cool parallax effect when pushing and popping view controllers. Its compatible with Storyboards and requires very little code.

In your storyboard, just change the UINavigationController class to IHParallaxNavigationController and your UIViewControllers to IHParallaxViewController, then in code set the parallax background image and you are done

All animations, transitions and gestures automatically performed by UINavigationControllers are supported by IHParallaxNavigationController as its a subclass
                       DESC
  s.license          = 'MIT'
  s.author           = { 'Fraser Scott-Morrison' => 'fraserscottmorrison@me.com' }
  s.source           = { :git => 'https://github.com/IdleHandsApps/IHParallaxNavigationController.git', :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.source_files = 'Classes/*.{h,m}'
  s.public_header_files = 'Classes/*.h'

  s.ios.deployment_target = '5.0'
  s.requires_arc = true
end
