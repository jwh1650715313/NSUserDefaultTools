//
//  NSUserDefaultTools.h
//  NSUserDefaultTools
//
//  Created by JIng on 2017/3/7.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaultTools : NSObject


+ (void)setBooleanValueWithKey:(BOOL)value key:(NSString *)key;
+ (BOOL)getBooleanValueWithKey:(NSString *)key;

+ (void)setStringValueWithKey:(NSString *)value key:(NSString *)key;
+ (NSString *)getStringValueWithKey:(NSString *)key;

+ (void)setUserInfo:(NSDictionary *)userInfo;


/**
 返回值为空时，可以看做未登录
 */

+ (NSDictionary *)getUserInfo;


+ (void)setDataWithKey:(NSData *)data key:(NSString *)key;
+ (NSData *)getDataWithKey:(NSString *)key;


@end
