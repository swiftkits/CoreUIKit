![CoreUIKit banner image](./assets/CoreUIKit-banner.png)

![MIT license](https://img.shields.io/github/license/swiftkits/CoreUIKit)
![CoreUIKit CI workflow](https://github.com/swiftkits/CoreUIKit/actions/workflows/build.yml/badge.svg)
![Pod](https://img.shields.io/badge/Cocoapod-Compatible-green)
![Carthage](https://img.shields.io/badge/Carthage-Compatible-green)
![SPM](https://img.shields.io/badge/SPM-Compatible-green)

# Welcome to CoreUIKit!
`CoreUIKit` provides functional and easy to use extensions on top of `UIKit`. Same concepts but less code!

- [Installation Guide](#installation)
    - [Install using Cocoapods](#cocoapods)
    - [Install using Swift package manager](#swift-package-manager)
    - [Install using Carthage](#carthage)
- [Tutorials](https://swiftkits.github.io/CoreUIKit/tutorials/tableofcontents)
- [Documentation](#documentation)
- [Examples](#examples)
- [Learn](#learn)
- [Author](#author)

## Installation

### Cocoapods
CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects. [Learn More!](https://cocoapods.org/)
```ruby
pod 'CoreUIKit', '0.3.5'
```

### Swift package manager
The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies. [Learn More!](https://swift.org/package-manager/)
```swift
dependencies: [
    .package(url: "https://github.com/swiftkits/CoreUIKit.git", .upToNextMajor(from: "0.3.5"))
]
```

### Carthage
A simple, decentralized dependency manager for Cocoa. [Learn More!](https://github.com/Carthage/Carthage)
```ruby
github "CoreUIKit" ~> 0.3.5
```

## Documentation
- [CoreUIKit Code level doc](https://swiftkits.github.io/CoreUIKit/documentation/coreuikit/)

## Examples
- How to add a `subView` on a `parentView` which has `leading` `trailing` `top` and `bottom` anchors matching with it's `parentView`
```swift
self.subView
    .add(to: self.parentView)
    .allAnchorsSame(on: self.prarentView)
```

- How to add a `subView` to a `parentView` with matching only `leading` anchor
```swift
self.subView
    .add(to: self.parentView)
    .leading(of: self.parentView.leadingAnchor)
```

- How to add a `subView` to a `parentView` on `top` and `leading` with margin/space of 10 units and `width` and `height` of 120 respectively.
```swift
self.subView
    .add(to: self.parentView)
    .top(of: self.parentView.topAnchor)
    .leading(of: self.parentView.leadingAnchor)
    .with(width: 120, height: 120)
```

- To learn more about avilable extensions, [check this out](https://0vertex.github.io/CoreUIKit/Extensions/UIView.html)

## Learn
Following are the useful links for learning about autolayout.
- Learn AutoLayout
    - [Understanding Auto Layout](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html)
    - [Writing constraints programmatically](https://www.avanderlee.com/swift/auto-layout-programmatically/)
    - [UILayoutGuide](https://developer.apple.com/documentation/uikit/uilayoutguide)
    - [Content hugging and Content compression resistance priorities](https://abhimuralidharan.medium.com/ios-content-hugging-and-content-compression-resistance-priorities-476fb5828ef)
    - [UIStackView](https://developer.apple.com/documentation/uikit/view_layout/)
    - [The Adaptive Model](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/TheAdaptiveModel.html)
- Debug
    - [Debugging Tricks and Tips](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/DebuggingTricksandTips.html)
    - [Understangin Issues](https://www.rightpoint.com/rplabs/2019/06/wtf-auto-layout-for-ios-in-swift/)
- WWDC Videos
    - [Mysteries of Auto Layout, Part 1](https://developer.apple.com/videos/play/wwdc2015/218)
    - [Mysteries of Auto Layout, Part 2](https://developer.apple.com/videos/play/wwdc2015/219)
    - [High Performance Auto Layout](https://developer.apple.com/videos/play/wwdc2018/220/)

## Author
Written By Manish Pandey.
