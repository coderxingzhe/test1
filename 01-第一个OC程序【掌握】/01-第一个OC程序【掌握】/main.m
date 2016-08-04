//
//  main.m
//  01-第一个OC程序【掌握】
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//
/*
 
 #import:
     作用：用来包含（导入）头文件
     优点：可以防止头文件的重复导入
 #import <> 用来包含系统自带文件的
 #import "" 用户项目中自己写头文件
 
 
 #include
      作用：用来包含（导入）头文件
 #include <> 用来包含系统自带文件的
 #include "" 用户项目中自己写头文件
 
 Foundation : 是OC中最基本库
 
 
@autoreleasepool 自动释放池，延长对象的释放的（了解）
 
NSLog 与 printf对比
相同点：
1.都是输出内容到控制台
2.都支持格式符，printf中支持格式符，NSLog中都支持

不同点：
 1.NSLog多一些日志信息
 2.NSLog自动换行
 3.@" " OC中字符串（NSString 类的对象）
 4.NSLog 中多了一种格式符 %@ ,用于输出对象

 @作用：（了解）
 1.@ 创建一些特定对象
 2.%@ 输出对象的
 3.OC中大部分关键字都是以@开头
 */

#import <Foundation/Foundation.h>


//OC以main函数为程序入口
int main(int argc, const char * argv[]) {
    
        NSLog(@"Hello, World!");
        NSLog(@"a= %d,b = %.2f",10,1.2);
        printf("a = %d,b = %.2f\n",10,1.2);
    
    NSLog(@"%@",@"今天天气真好！");
    return 0;
}
