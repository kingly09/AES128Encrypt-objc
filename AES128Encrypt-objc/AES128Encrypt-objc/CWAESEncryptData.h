//
//  CWAESEncryptData.h
//  AES128Encrypt-objc
//
//  Created by kingly on 15/12/1.
//  Copyright © 2015年 kingly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CWAESEncryptData : NSObject

@property (nonatomic,copy) NSString *sKey; //16位的字符串
@property (nonatomic,copy) NSString *sIv;  //16位的字符串


/**
 * 加密 Data
 */
- (NSData*) encryptData:(NSData *)data;
/**
 * 解密 Data
 */
- (NSData*) decryptData:(NSData *)data;

@end
