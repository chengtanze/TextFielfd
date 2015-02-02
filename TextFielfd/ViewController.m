//
//  ViewController.m
//  TextFielfd
//
//  Created by wangsl-iMac on 14-10-21.
//  Copyright (c) 2014年 wangsl-iMac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
{
    UITextField *textfield;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
     _myTextField.delegate = self;
    
    textfield = [[UITextField alloc] initWithFrame:CGRectMake(25, 25, 150, 30)];
    textfield.delegate = self;
    textfield.borderStyle = UITextBorderStyleRoundedRect;
    
    //占位符，提示用户输入
    textfield.placeholder = @"输入";
    
    //文字对齐方式
    textfield.textAlignment = NSTextAlignmentCenter;
    
    //输入文字超出文本框自动缩减
    textfield.adjustsFontSizeToFitWidth = YES;
    
    textfield.textColor = [UIColor redColor];
    
    //设置“清除”按钮模式
    textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    //重新获得焦点得时候是否清除文本内容
    textfield.clearsOnBeginEditing = YES;
    
    // 密码模式
    //textfield.secureTextEntry = YES;
    
    // 键盘背景模式（黑夜模式...）
    textfield.keyboardAppearance = UIKeyboardAppearanceLight;
    
    // 键盘模式（数字键盘，字母键盘...）
    textfield.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    
    //设置背景图片得时候borderStyle要设置为：UITextBorderStyleNone
    //textfield.background = [UIImage imageNamed:@"btn_position"];
    //textfield.backgroundColor = [UIColor blackColor];
    
    /*  重新设置清除按钮（设置rightview）
    UIButton *clearView = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 32, 32)];
    UIImage *clearImage = [UIImage imageNamed:@"btn_popClose"];
    UIImageView * iamgeview = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 32, 32)];
    iamgeview.image =clearImage;
    [clearView addSubview:iamgeview];
    [clearView addTarget:self action:@selector(clickClear:) forControlEvents:UIControlEventTouchUpInside];
    
    textfield.rightView = clearView;
    textfield.rightViewMode = UITextFieldViewModeWhileEditing;
    */
    
    /*//  重新设置键盘界面
    UIView * MyinputView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 70)];
    MyinputView.backgroundColor = [UIColor blackColor];
    
    textfield.inputView = MyinputView;
    */
    
    /* //重新设置键盘配件界面
    UIView * MyAccessoryView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 70)];
    MyAccessoryView.backgroundColor = [UIColor redColor];
    
    textfield.inputAccessoryView = MyAccessoryView;
    */
    
    
    [self.view addSubview:textfield];
}

-(void)clickClear:(id)sender
{
    // 将根view的类型设置为UIControl（之前是UIView） 这样背景就可以有相应事件的能力
    // 设置之后背景颜色就变成黑色了并且无法相应点击事件，必须重新设置背景色才能响应事件（没找到原因。。。。）
    NSLog(@"click clear!");
    
    textfield.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
   
}

- (IBAction)backgroudTag:(id)sender {
    
    NSLog(@"backgroudTag");
    [textfield resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"textfieldshouldreturn");
    [textField resignFirstResponder];
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidEndEditing");
    [textField resignFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField        // return NO to disallow editing.
{
    //NSLog(@"textFieldShouldBeginEditing %@", textfield);
    NSLog(@"textFieldShouldBeginEditing");
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField           // became first responder
{
    NSLog(@"textFieldDidBeginEditing");
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField          // return YES to allow editing to stop and to resign           //first responder status. NO to disallow the editing session to end

{
    NSLog(@"textFieldShouldEndEditing");
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;   // return NO to not change text
{
    NSLog(@"shouldChangeCharactersInRange %@", string);
    return YES;
}

@end
