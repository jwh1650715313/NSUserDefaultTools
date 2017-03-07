//
//  LoginInfo.h
//  云图互联
//
//  Created by JIng on 2016/11/2.
//  Copyright © 2016年 JIng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginInfo : NSObject


@property(nonatomic,strong)NSString * resMsg;//错误信息内容
@property(nonatomic,strong)NSString * sign;//返回相同的KEY，用于调用方接收返回值时验证

@end
