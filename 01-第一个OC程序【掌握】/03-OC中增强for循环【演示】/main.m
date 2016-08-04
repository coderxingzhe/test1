//
//  main.m
//  03-OC中增强for循环【演示】
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
   forin 用于遍历OC中集合类（数组，字典）
 
 */
int main(int argc, const char * argv[]) {
// OC中的集合类中只能放对象
// @[] 定义一个不可变的数组
// @1  数值对象
    NSArray * nums = @[@1,@2,@3,@4];
//  forin 增强的for
    for (NSNumber *num in nums) {
        
        NSLog(@"%@",num);
        
    }
    
    
    
    return 0;
}
