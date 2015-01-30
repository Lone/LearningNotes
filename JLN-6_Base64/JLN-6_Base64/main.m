//
//  main.m
//  JLN-6_Base64
//
//  Created by Jymn_Chen on 15/1/29.
//  Copyright (c) 2015年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

static uint8_t const kJTTBase64EncodingTable[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

static NSString * JTTBase64EncodeStringFromString(NSString *string) {
    // 1. 获取待编码字符串对应的二进制数据
    //
    const char * srcBytes = [string UTF8String];
    NSUInteger srcLength = [string lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    NSData *srcData = [NSData dataWithBytes:srcBytes length:srcLength];

    // 2. 创建用于存储已编码字符串的二进制数据区
    //
    // srcLength如果是3的倍数，那么desLength = srcLength / 3 * 4
    //
    // 否则，先将srcBytes低位补0，使srcLength成为3的倍数
    // 例如: 1 -> 3, 2 -> 3, 3, 4 -> 6, 5 -> 6, 6 ...
    // 最终desLength = (srcLength + 2) / 3 * 4
    //
    // 由此可以算出编码后的数据长度
    //
    NSUInteger desLength = (srcLength + 2) / 3 * 4;
    NSMutableData *desData = [NSMutableData dataWithLength:desLength];
    
    // 3. 用8位定长数组指向这些数据 (1字节 = 8位)
    //
    uint8_t *input = (uint8_t *)[srcData bytes];
    uint8_t *output = (uint8_t *)[desData mutableBytes];
    
    // 4. Base64编码过程
    //
    // 每3个字节一组循环，3个字节就是24位，4个Base64编码
    //
    for (NSUInteger i = 0; i < srcLength; i += 3) {
        NSUInteger value = 0; // 存储3个字节组合的二进制值，例如84 111 109 --> 010101000110111101101101
        for (NSUInteger j = i; j < (i + 3); j++) {
            value <<= 8; // 低8位清0
            if (j < srcLength) {
                value |= (input[j] & 0xFF);
            }
        }
        //
        // value = input[0] input[1] input[2] ...
        // 例如Tom
        // T  o   m
        // value = 84 111 109
        // value = 01010100 01101111 01101101
        // value = 84 << 16 + 111 << 8 + 109
        
        NSUInteger index = (i / 3) * 4;
        // & 0x3F : 取低6位
        output[index + 0] = kJTTBase64EncodingTable[(value >> 18) & 0x3F];
        output[index + 1] = kJTTBase64EncodingTable[(value >> 12) & 0x3F];
        output[index + 2] = (i + 1) < srcLength ? kJTTBase64EncodingTable[(value >> 6) & 0x3F] : '=';
        output[index + 3] = (i + 2) < srcLength ? kJTTBase64EncodingTable[(value >> 0) & 0x3F] : '=';
    }
    
    return [[NSString alloc] initWithData:desData encoding:NSASCIIStringEncoding];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *src1 = @"a";
        NSString *des1 = JTTBase64EncodeStringFromString(src1);
        NSLog(@"%@", des1);
        // 待编码字符串:      a
        // 对应的ASCII值:    97
        // 转换为二进制:      01100001
        // 补全为3个字节(总位数需要能被3整除): 01100001 00000000(e) 00000000(e)    注: (e)表示异常补位，用'='编码而不是'A'
        // 拆分为每6位一组:    011000 010000 000000(e) 000000(e)
        // 每组补全为8位:     00011000 00010000 00000000(e) 00000000(e)
        // 转换为十进制:      24 16 0(e) 0(e)
        // Base64编码:       Y  Q  =    =
        // 已编码字符串:      YQ==
        
        NSString *src2 = @"0x";
        NSString *des2 = JTTBase64EncodeStringFromString(src2);
        NSLog(@"%@", des2);
        // 待编码字符串:      0x
        // 对应的ASCII值:    48 120
        // 转换为二进制:      00110000 01111000
        // 补全为3个字节(总位数需要能被3整除): 00110000 01111000 00000000(e)
        // 拆分为每6位一组:    001100 000111 100000 000000(e)
        // 每组补全为8位:     00001100 00000111 00100000 00000000(e)
        // 转换为十进制:      12 7 32 0(e)
        // Base64编码:       M  H g =
        // 已编码字符串:      MHg=
        
        NSString *src3 = @"Tom";
        NSString *des3 = JTTBase64EncodeStringFromString(src3);
        NSLog(@"%@", des3);
        // 待编码字符串:      Tom
        // 对应的ASCII值:    84 111 109
        // 转换为二进制:      01010100 01101111 01101101
        // 补全为3个字节(总位数需要能被3整除): 01010100 01101111 01101101
        // 拆分为每6位一组:    010101 000110 111101 101101
        // 每组补全为8位:     00010101 00000110 00111101 00101101
        // 转换为十进制:      21 6 61 45
        // Base64编码:       V G  9  t
        // 已编码字符串:      VG9t
        
        NSString *src4 = @"0p";
        NSString *des4 = JTTBase64EncodeStringFromString(src4);
        NSLog(@"%@", des4);
        // 待编码字符串:      0p
        // 对应的ASCII值:    48 112
        // 转换为二进制:      00110000 01110000
        // 补全为3个字节(总位数需要能被3整除): 00110000 01110000 00000000(e)
        // 拆分为每6位一组:    001100 000111 000000 000000(e)
        // 每组补全为8位:     00001100 00000111 00000000 00000000(e)
        // 转换为十进制:      12 7 0 0(e)
        // Base64编码:       M  H A =
        // 已编码字符串:      MHA=
        // 注: 补位时补了多少个'00000000(e)'，最后编码就会出现多少个'='，否则正常情况下0应该被编码成'A'
        
    }
    return 0;
}
