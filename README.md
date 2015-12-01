# AES128Encrypt-objc

AES 几种加密方式如下：

 
# 例子DEMO

NSString *requestStr = [NSString stringWithFormat:@"123456789012345678"];

NSData *requData = [requestStr dataUsingEncoding:NSUTF8StringEncoding];

//初始化

CWAESEncryptData *AESEncryptData = [[CWAESEncryptData alloc] init];

AESEncryptData.sKey = @"1234567890123456";

AESEncryptData.sIv  = @"6543210123456789";

# AES128 + CBC + No Padding

NSData *enData = [AESEncryptData encryptData:requData];

NSData *deData = [AESEncryptData decryptData:enData];


# 使用 AES128 + ECB + PKCS7 加密解密 

NSData *enECBData = [AESEncryptData encryptECBData:requData];

NSData *deECBData = [AESEncryptData decryptECBData:enECBData];


# 使用 AES256 + ECB + PKCS7 加密解密 

AESEncryptData.sKey = @"123456789012345678901234567890123";

NSData *enAES256Data = [AESEncryptData AES256EncryptWithData:requData];

NSData *deAES256BData = [AESEncryptData AES256DecryptWithData:enAES256Data];





