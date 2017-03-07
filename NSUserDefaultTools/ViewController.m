//
//  ViewController.m
//  NSUserDefaultTools
//
//  Created by JIng on 2017/3/7.
//  Copyright © 2017年 JIng. All rights reserved.
//

#import "ViewController.h"
#import "NSUserDefaultTools.h"
#import "LoginInfo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //保存一个Boolean值
    
    [NSUserDefaultTools setBooleanValueWithKey:YES key:@"saveBoolean"];
    

    NSLog(@"取出Boolean值========%d",[NSUserDefaultTools getBooleanValueWithKey:@"saveBoolean"]);
    
    //保存一个字符串
    
    
    [NSUserDefaultTools setStringValueWithKey:@"哈哈哈" key:@"saveString"];
    
    NSLog(@"取出字符串========%@",[NSUserDefaultTools getStringValueWithKey:@"saveString"]);
    
    
    //保存一个字字典
    [NSUserDefaultTools setUserInfo:@{@"username":@"12345",@"psd":@"1234"}];
    
    NSLog(@"取出字典=======%@",[NSUserDefaultTools getUserInfo]);
    
    
    //保存一个NSArray
    
    NSArray *arr1 = [[NSArray alloc]initWithObjects:@"0",@"5",nil];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:arr1];
    
    [NSUserDefaultTools setDataWithKey:data key:@"saveArray"];
    
    NSArray *arr2 = [NSKeyedUnarchiver unarchiveObjectWithData:[NSUserDefaultTools getDataWithKey:@"saveArray"]];
    NSLog(@"取出字典=======%@",arr2);
    
    
    //保存自定义的对象
    LoginInfo  *userinfo=[[LoginInfo alloc]init];
    
    userinfo.resMsg=@"呵呵呵";
    userinfo.sign=@"哈哈";
    
    NSData *Logindata = [NSKeyedArchiver archivedDataWithRootObject:userinfo];
    
    [NSUserDefaultTools setDataWithKey:Logindata key:@"saveUserinfo"];
    
    
    LoginInfo *info = [NSKeyedUnarchiver unarchiveObjectWithData:[NSUserDefaultTools getDataWithKey:@"saveUserinfo"]];
    
    NSLog(@"取出自定义对象=======%@",info);
    

    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
