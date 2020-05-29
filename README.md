# SYAlertController

[![CI Status](https://img.shields.io/travis/wanghao/SYAlertController.svg?style=flat)](https://travis-ci.org/wanghao/SYAlertController)
[![Version](https://img.shields.io/cocoapods/v/SYAlertController.svg?style=flat)](https://cocoapods.org/pods/SYAlertController)
[![License](https://img.shields.io/cocoapods/l/SYAlertController.svg?style=flat)](https://cocoapods.org/pods/SYAlertController)
[![Platform](https://img.shields.io/cocoapods/p/SYAlertController.svg?style=flat)](https://cocoapods.org/pods/SYAlertController)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```
SYAlertController *alert = [SYAlertController alertControllerWithTitle:@"" message:@"测试测试测试测试测试测试的测试测试" image:@"需要显示的image"];
UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
[alert addAction:ok];
[[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];

```

[效果图1:](https://upload-images.jianshu.io/upload_images/6506842-d6aba990bc47b0e2.png?imageMogr2/auto-orient/strip|imageView2/2/w/766/format/webp)
[效果图2:](https://upload-images.jianshu.io/upload_images/6506842-e621a5abbac99a3d.png?imageMogr2/auto-orient/strip|imageView2/2/w/740/format/webp)
[效果图3:](https://upload-images.jianshu.io/upload_images/6506842-2534237b4e648703.png?imageMogr2/auto-orient/strip|imageView2/2/w/756/format/webp)

## Requirements

## Installation

SYAlertController is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SYAlertController'
```

## Author

wanghao, 512975801@qq.com

## License

SYAlertController is available under the MIT license. See the LICENSE file for more info.
