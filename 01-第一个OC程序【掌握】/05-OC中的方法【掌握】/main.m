//
//  main.m
//  05-OC中的方法【掌握】
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
  计算器类
 
  类名：Calculator
  属性：型号
  行为：pi,计算圆的周长,计算两个数的和
 

 */
//定义类
//类声明

@interface Calculator : NSObject
{
//  声明属性
//  型号
    NSString *model;
}
/*
  有返回值无参的方法
 
  方法类型 (返回值类型) 方法名称;
   
  方法类型 
  对象方法：以“-”开头，必须同过对象才能调用
  类方法：  以“+”开头 (了解)，可以通过类名调用
 
  1.OC中声明方法的时候，所有数据类型都要使用 () 扩起来
 
 
*/

//返回PI的值
//-说明是对象方法 double该方法返回一个double类型的值，方法名：pi
- (double) pi;

//计算圆的周长
//- 说明对象方法，double:返回一个double类型的值
//方法名称：zhouChang:(:是方法名称一部分)---selector
//:后面小括号中的double 是形参的类型
// r形参名称
- (double) zhouChang:(double) r;


//计算两个数的和
//注意num1 与 num2 不可以重名，因为都是形参名称
//在OC的方法声明中，只有有一个形参就必须有一个:与之对应，只有:后面才可以有形参
//-说明是对象方法
//- 后面的double:返回一个double类型的值
//方法名称：sumOfNum: andNum:,:前面字符串是参数说明符
//形参：(double) num1,(double)num2
- (double) sumOfNum:(double) num1 andNum:(double) num2;

@end


//类的实现

@implementation Calculator

//写方法实现
//返回PI的值
-(double) pi
{
    return 3.1415926;
}

//计算圆的周长
- (double) zhouChang:(double)r
{
//  self : 代表当前的这个对象
//  谁调用这个方法，self就是谁
    
    return  2 * [self pi] * r;
}

//计算两个数的和
- (double) sumOfNum:(double)num1 andNum:(double)num2
{
    return num1 + num2;
}

@end

int main(int argc, const char * argv[]) {
 
//   通过类创建对象
    Calculator *calculator =  [Calculator new];
//    指挥对象做事情
//  通过对象调用对象上的方法
//  OC中也这么说：给 calculator 这个对象发送一条 pi 的消息
    double pi   = [calculator pi];//调用没有参数方法
    NSLog(@"pi = %.7lf",pi);
//调用有一个参数的方法 “5” 就是一个实参
    double zhouChang = [calculator zhouChang:5];
    NSLog(@"zhouChang = %lf",zhouChang);
    
    double sum = [calculator sumOfNum:2.5 andNum:3.6];
    NSLog(@"sum = %lf",sum);
    
    

    return 0;
}
