//
//  LoginInfo.m
//  云图互联
//
//  Created by JIng on 2016/11/2.
//  Copyright © 2016年 JIng. All rights reserved.
//

#import "LoginInfo.h"

@implementation LoginInfo

- (void)encodeWithCoder:(NSCoder *)aCoder{//序列化
   
    
   
    [aCoder encodeObject:self.resMsg forKey:@"resMsg"];
     [aCoder encodeObject:self.sign forKey:@"sign"];
    
    
    
   
}


- (id)initWithCoder:(NSCoder *)aDecoder{//反序列化
    
    self = [super init];
    if(self != nil){
       
       
        self.resMsg = [aDecoder decodeObjectForKey:@"resMsg"];
        self.sign = [aDecoder decodeObjectForKey:@"sign"];
        
       
    }
    return self;
}





@end
