//
//  FactoryUI.m
//  常用控件的封装
//
//  Created by ruwinGod on 16/8/10.
//  Copyright © 2016年 ruwinGod. All rights reserved.
//

#import "FactoryUI.h"

//@interface FactoryUI ()
//
//@property (nonatomic,copy)myButtonBlock block;
//@end

@implementation FactoryUI


+ (UILabel *)createLabelWithFrame:(CGRect)frame title:(NSString *)title andFont:(NSInteger)font{
    
    UILabel *label = [[UILabel alloc]init];
    label.frame = frame;
    label.text = title;
    label.font = [UIFont systemFontOfSize:font];
    label.textAlignment = NSTextAlignmentLeft;
    
    return label;
}

+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title normalImage:(NSString *)noremalName selectedImage:(NSString *)selectedImage titleColor:(UIColor *)titleColor target:(id)target selector:(SEL)selector andTag:(NSInteger)tag{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    if ([noremalName hasPrefix:@"http"] || [noremalName hasPrefix:@"https"]) {
        
    }
    [btn setImage:[UIImage imageNamed:noremalName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    btn.tag = tag;
    return btn;
}

+ (UIImageView *)createImageViewWithFrame:(CGRect)frame andImageName:(NSString *)imageName{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.frame = frame;
    imageView.image = [UIImage imageNamed:imageName];
    
    return imageView;
}

+ (UITextField *)createTextFieldWithFrame:(CGRect)frame text:(NSString *)text andPlaceholder:(NSString *)placeHolder{
    
    UITextField *textField = [[UITextField alloc]init];
    textField.frame = frame;
    textField.text = text;
    textField.placeholder = placeHolder;
    
    return textField;
    
}

+ (UIView *)createViewWithFrame:(CGRect)frame{
    
    UIView *view = [[UIView alloc]init];
    view.frame = frame;
    
    return view;
}


@end
