//
//  ViewController.m
//  AES128Encrypt-objc
//
//  Created by kingly on 15/12/1.
//  Copyright © 2015年 kingly. All rights reserved.
//

#import "ViewController.h"
#import "KYEncrypt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string = @"原始字符串：123456";
    NSString *key    = @"K123456";
    NSString *enString = [[KYEncrypt sharedInstance] AES256EncryptWithString:string withKey:key];
     NSLog(@"加密之前：%@",string);
     NSLog(@"加密后：%@",enString);
    NSString *deString = [[KYEncrypt sharedInstance] AES256DecryptWithString:enString withKey:key];
    
     NSLog(@"解密后：%@",deString);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
