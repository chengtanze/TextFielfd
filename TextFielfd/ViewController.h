//
//  ViewController.h
//  TextFielfd
//
//  Created by wangsl-iMac on 14-10-21.
//  Copyright (c) 2014年 wangsl-iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

- (IBAction)backgroudTag:(id)sender;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;
- (void)textFieldDidEndEditing:(UITextField *)textField;   
@end

