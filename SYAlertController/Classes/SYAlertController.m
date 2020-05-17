//
//  SYAlertController.m
//  AppFrame-OC
//
//  Created by 王浩 on 2020/5/17.
//  Copyright © 2020 wanghao. All rights reserved.
//

#import "SYAlertController.h"
#import <PureLayout/PureLayout.h>

static NSString *findTag =@"<+*~>";

@interface SYAlertController ()

@end

@implementation SYAlertController

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message image:(id)image{
    return [SYAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert image:image];
}

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle image:(id)image{
    SYAlertController *alertVC =[SYAlertController alertControllerWithTitle:title message:findTag preferredStyle:preferredStyle];
    if (alertVC) {
        UIView *labView = [alertVC getAlertMessageLable:alertVC.view];
        if ([labView isKindOfClass:UILabel.class]) {
            UIImage *icon = [alertVC getImageWithImage:image];
            if (icon) {
               [alertVC autoLayoutWithMessageLable:(UILabel *)labView image:icon];
            }else{
                NSLog(@"#Warning:image is null");
            }
            
        }
        alertVC.message = message;
    }
    return alertVC;
}


- (UIImage *)getImageWithImage:(id)image{
    UIImage *icon;
    if ([image isKindOfClass:UIImage.class]) {
        icon = (UIImage *)image;
    }else if ([image isKindOfClass:NSString.class]){
        icon = [UIImage imageNamed:(NSString *)image];
        if (!icon) {
            if ([[NSFileManager defaultManager] fileExistsAtPath:(NSString *)image]) {
                icon = [UIImage imageWithContentsOfFile:(NSString *)image];
            }
        }
    }else if ([image isKindOfClass:NSData.class]){
        icon = [UIImage imageWithData:image];
    }
    return icon;
}

- (void)autoLayoutWithMessageLable:(UILabel *)msgLab image:(UIImage *)image{
    UIImageView *imageView = [[UIImageView alloc]initForAutoLayout];
    [imageView setImage:image];
    [msgLab.superview addSubview:imageView];
    [imageView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:15];
    [imageView autoAlignAxisToSuperviewAxis:ALAxisVertical];
    [msgLab autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:imageView withOffset:20];
    [imageView autoSetDimensionsToSize:CGSizeMake(50.0, 50.0)];
}

- (UIView *)getAlertMessageLable:(UIView *)superView{
    if ([superView isKindOfClass:UILabel.class]) {
        return superView;
    }else{
        if (superView.subviews.count >0) {
            for (UIView *view_f in superView.subviews) {
                if ([view_f isKindOfClass:UILabel.class] && [findTag isEqualToString:((UILabel *)view_f).text]) {
                    return view_f;
                }else{
                    UIView * view_s = [self getAlertMessageLable:view_f];
                    if ([view_s isKindOfClass:UILabel.class] && [findTag isEqualToString:((UILabel *)view_s).text]) {
                        return view_s;
                    }
                }
            }
        }
    }
    return superView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
