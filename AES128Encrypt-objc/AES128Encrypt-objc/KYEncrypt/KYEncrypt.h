//
//  KYEncrypt.h
//  AES128Encrypt-objc
//
//  Created by kingly on 2017/11/22.
//  Copyright © 2017年 kingly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KYEncrypt : NSObject

@property (nonatomic,copy) NSString *sKey; //16位的字符串
@property (nonatomic,copy) NSString *sIv;  //16位的字符串

/**
 * @breif 获取实例
 */
+ (KYEncrypt *) sharedInstance;

/*＊
 *  AES128 + CBC + No Padding
 *
 *  @param data 要加密的原始数据
 *
 *  @return  加密后数据
 */
- (NSData*) encryptData:(NSData *)data;
/*＊
 *  AES128 + CBC + No Padding
 *
 *  @param data 要解密的原始数据
 *
 *  @return  解密后数据
 */
- (NSData*) decryptData:(NSData *)data;

/*＊
 *  AES128 + ECB + PKCS7
 *
 *  @param data 要加密的原始数据
 *
 *  @return  加密后数据
 */
- (NSData*)encryptECBData:(NSData*)data;

/*＊
 *  AES128 + ECB + PKCS7
 *
 *  @param data 要解密的原始数据
 *
 *  @return  解密后数据
 */
- (NSData*)decryptECBData:(NSData*)data;
/*＊
 *  AES256 + ECB + PKCS7
 *
 *  @param data 要加密的原始数据
 *
 *  @return  加密后数据
 */
- (NSData *)AES256EncryptWithData:(NSData* )data;
/*＊
 *  AES256 + ECB + PKCS7
 *
 *  @param data 要解密的原始数据
 *
 *  @return  解密后数据
 */
- (NSData *)AES256DecryptWithData:(NSData* )data;

/**
 使用 AES256 + ECB + PKCS7加密字符串

 @param str 需要加密的字符串
 @param key 密钥
 @return 返回加密的字符串
 */
- (NSString *)AES256EncryptWithString:(NSString *)str withKey:(NSString *)key;

/**
 使用 AES256 + ECB + PKCS7 解密字符串
 
 @param str 需要加密的字符串
 @param key 密钥
 @return 返回加密的字符串
 */
- (NSString *)AES256DecryptWithString:(NSString *)str withKey:(NSString *)key;

@end
