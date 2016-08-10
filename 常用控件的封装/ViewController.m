//
//  ViewController.m
//  常用控件的封装
//
//  Created by ruwinGod on 16/8/10.
//  Copyright © 2016年 ruwinGod. All rights reserved.
//

#import "ViewController.h"
#import "FactoryUI.h"

@interface ViewController ()
@property (nonatomic, strong)UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [FactoryUI createButtonWithFrame:CGRectMake(100, 100, 100, 100) title:@"点击" normalImage: nil selectedImage:nil titleColor:[UIColor greenColor] target:self selector:@selector(btnClick:) andTag:100];
    
    [self.view addSubview:btn];
    
    UILabel *label = [FactoryUI createLabelWithFrame:CGRectMake(100, 20, 100, 40) title:@"我是王者" andFont:20];
    [self.view addSubview:label];
    
     _textField = [FactoryUI createTextFieldWithFrame:CGRectMake(100, 210, 100, 40) text:@"sdfsaferawertargsfasdfaertaegsdfarasdfarfasfafrafaargargsrgsdfgsd" andPlaceholder:@"请输入要去的地方"];
    [self.view addSubview:_textField];
    
    UIView *view = [FactoryUI createViewWithFrame:CGRectMake(0, 300, 300, 200)];
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnClick:(UIButton *)btn{
    
    NSLog(@"点了");
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_textField resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
