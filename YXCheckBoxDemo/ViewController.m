//
//  ViewController.m
//  YXCheckBoxDemo
//
//  Created by zdy on 16/8/12.
//  Copyright © 2016年 lianlian. All rights reserved.
//

#import "ViewController.h"
#import "YXCheckBox.h"

@interface ViewController ()
@property (nonatomic,strong) IBOutlet UITextField *passwordText;
@property (strong, nonatomic) IBOutlet YXCheckBox *passwordCheckBox;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    __weak ViewController *wself = self;
    self.passwordCheckBox.checkedBoxBlock = ^(BOOL checked){
        wself.passwordText.secureTextEntry = !checked;
        [wself.passwordText becomeFirstResponder];
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
