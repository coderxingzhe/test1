//
//  main.m
//  06-练习
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//
/*
 类名:苹果手机(Iphone)
 属性:颜色(_color ), 大小(_size), _cpu
 行为:查看本机信息(aboutMyPhone),打电话(call), 发短信 (sendMessage)
 要求：
 实现该类,并:
 1)查看本机信息
 2)打电话给10086
 3)给10086发短信问联通的客服电话是多少

 
 */
#import <Foundation/Foundation.h>

//定义一个枚举表示颜色

typedef enum {
   ColorWhite,
   ColorBlack,
   ColorTuHaoGold
} Color;


//定义一个类 声明和实现

//类的声明
@interface Iphone : NSObject
{
@public
// 成员变量:
// 成员变量的规范，所有的成员变量都要以_开头
// 颜色
    Color _color;
//  尺寸
    double _size;
//  cpu
    NSString *_cpu;
}
//声明方法
- (void) aboutMyPhone;
//打电话
- (void) callToNumber:(NSString *) phoneNum;
//发短信
- (void) sendMessage:(NSString *) content toNum:(NSString *) phoneNum;

@end

//类的实现
@implementation Iphone

//声明方法
- (void) aboutMyPhone
{
// 对象方法与成员变量都是对象的一个部分
// 在对象方法中可以直接访问成员变量
    NSString *color;
//  _color 就是调用这个方法哪个对象的_color
//  谁调用这个方法成员变量就是谁的
    switch (_color) {        // ?
        case ColorWhite:
            color = @"白色";
            break;
        case ColorBlack:
            color = @"黑色";
            break;
        case ColorTuHaoGold:
            color = @"土豪金";
            break;
        default:
            break;
    }
    
    NSLog(@"这是一部 %@的，CPU为%@，大小为%.1lf的iPhone手机",color,_cpu,_size);
}
//打电话
- (void) callToNumber:(NSString *) phoneNum
{
    NSLog(@"给 %@ 打电话",phoneNum);
}
//发短信
- (void) sendMessage:(NSString *) content toNum:(NSString *) phoneNum
{
    NSLog(@"给 %@ 发送一条内容为:%@",phoneNum,content);
}

@end

int main(int argc, const char * argv[]) {
   
//  创建一个iPhone
    Iphone *iphone = [Iphone new];
    
    iphone->_color = ColorTuHaoGold;
    iphone->_cpu = @"A8";
    iphone->_size = 4.7;
//  给iphone发送一条aboutMyPhone的消息
    [iphone aboutMyPhone];
    
//   使用iphone给10086打电话
    [iphone callToNumber:@"10086"];
//  使用iphone给10086发送短信
    [iphone sendMessage:@"联通的客服电话是多少?" toNum:@"10086"];
    
    
    
    return 0;
}
