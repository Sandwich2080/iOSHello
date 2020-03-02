//
//  ViewController.m
//  iOSHello
//
//  Created by zdh on 2020/3/2.
//  Copyright © 2020 zdh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Tool bar
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, 48)];
    toolBar.barStyle = UIBarStyleDefault;
    [toolBar setBarTintColor:UIColor.systemBlueColor];
    
    [self.view addSubview:toolBar];
    
    // name label
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:(CGRectMake(50, 100, 100, 100))];
    nameLabel.font = [UIFont systemFontOfSize:16];//[[UIFont alloc]fontWithSize:16];
    nameLabel.text = @"用户名";
    nameLabel.backgroundColor=[UIColor clearColor];
    nameLabel.numberOfLines = 2;
    nameLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:nameLabel];
    
    // name TextField
    UITextField *nameTextField = [[UITextField alloc]initWithFrame:CGRectMake(120,130,self.view.frame.size.width-175,42)];
    nameTextField.placeholder = @"请输入用户名";
    nameTextField.tag=1;
    nameTextField.font =[UIFont systemFontOfSize:14];
    nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:nameTextField];
    
    
    UIButton *loginBtn = [[UIButton alloc]initWithFrame:CGRectMake(50, self.view.frame.size.height-200, self.view.frame.size.width-100, 42)];
    loginBtn.backgroundColor = [UIColor redColor];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    
    [loginBtn addTarget:self action:@selector(confirm:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginBtn];
}

- (void) confirm: (UIButton *) button{
    printf("login button clicked \n");
    NSLog(@"The button is %@\n",button);
}


@end
