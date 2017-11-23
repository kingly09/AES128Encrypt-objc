//
//  AppDelegate.m
//  AES128Encrypt-objc
//
//  Created by kingly on 15/12/1.
//  Copyright © 2015年 kingly. All rights reserved.
//

#import "AppDelegate.h"
#import "KYEncrypt.h"
#import "KYGTMBase64.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSString *requestStr = [NSString stringWithFormat:@"123456"];
    NSData *requData = [requestStr dataUsingEncoding:NSUTF8StringEncoding];
    
    KYEncrypt *AESEncryptData = [[KYEncrypt alloc] init];
    AESEncryptData.sKey = @"1234567890123456";
    AESEncryptData.sIv  = @"6543210123456789";


    NSData *enData = [AESEncryptData encryptData:requData];

    NSData *deData = [AESEncryptData decryptData:enData];

    NSString *dectext = [[NSString alloc] initWithData:deData encoding:NSUTF8StringEncoding];

    NSLog(@"解密：：%@",dectext);

    NSLog(@"－－－－－－使用 AES128 + ECB + PKCS7 加密解密 －－－－－－");

    NSData *enECBData = [AESEncryptData encryptECBData:requData];

    NSData *deECBData = [AESEncryptData decryptECBData:enECBData];

    NSString *decECBtext = [[NSString alloc] initWithData:deECBData encoding:NSUTF8StringEncoding];

    NSLog(@"使用 AES128 + ECB + PKCS7 解密：：%@",decECBtext);
    
    NSLog(@"－－－－－－使用 AES256 －－－－－－");
    AESEncryptData.sKey = @"111111";
    NSData *enAES256Data = [AESEncryptData AES256EncryptWithData:requData];
    
    //最终结果再base64转码
    NSString *resultStr = [KYGTMBase64 stringByEncodingData:enAES256Data];
    
    
    NSLog(@"AES256 加密：：%@",resultStr);
    
    
    NSData *AES256Data  = [KYGTMBase64 decodeString:resultStr];
    
    NSData *deAES256BData = [AESEncryptData AES256DecryptWithData:AES256Data];
    
    NSString *deAES256text = [[NSString alloc] initWithData:deAES256BData encoding:NSUTF8StringEncoding];
    
    NSLog(@"使用 AES256  解密：：%@",deAES256text);

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
