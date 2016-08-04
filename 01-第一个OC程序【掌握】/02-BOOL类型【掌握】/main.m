//
//  main.m
//  02-BOOL类型【掌握】
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 BOOL 类型，OC中提供逻辑类型
 
 只有两个取值
 YES   真
 NO    假
 
 BOOL 类型可以让程序有更好的可读性，以后保存真假的数据的时候要使用BOOL类型
 
 
 
 BOOL 类型的实质 signed char(了解)
 
 typedef signed char BOOL;
 
 YES 1
 NO  0
 
 #define YES ((BOOL)1)
 
 #define NO  ((BOOL)0)
 */
int main(int argc, const char * argv[]) {
  
    BOOL isHave = YES;
    
    if(isHave){
        NSLog(@"真");
    }else{
        NSLog(@"假");
    }
    
    
    return 0;
}
