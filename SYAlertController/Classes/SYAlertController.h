//
//  SYAlertController.h
//  AppFrame-OC
//
//  Created by 王浩 on 2020/5/17.
//  Copyright © 2020 wanghao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SYAlertController : UIAlertController

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message image:(id)image;

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle image:(id)image;

@end

NS_ASSUME_NONNULL_END
