//
//  FactoryUI.h
//  常用控件的封装
//
//  Created by ruwinGod on 16/8/10.
//  Copyright © 2016年 ruwinGod. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//@class FactoryUI;
//typedef void (^myButtonBlock)(FactoryUI *button);

@interface FactoryUI : NSObject
//UILabel
+ (UILabel *)createLabelWithFrame:(CGRect )frame title:(NSString *)title andFont:(NSInteger)font;
//UIButton
+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title normalImage:(NSString *)noremalName selectedImage:(NSString *)selectedImage titleColor:(UIColor *)titleColor target:(id)target selector:(SEL)selector andTag:(NSInteger)tag;
//UIImageView
+ (UIImageView *)createImageViewWithFrame:(CGRect)frame andImageName:(NSString *)imageName;
//UItextField
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame text:(NSString *)text andPlaceholder:(NSString *)placeHolder;
//UIView
+ (UIView *)createViewWithFrame:(CGRect)frame;

@end
