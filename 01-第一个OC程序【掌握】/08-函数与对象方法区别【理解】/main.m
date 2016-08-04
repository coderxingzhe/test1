//
//  main.m
//  08-函数与对象方法区别【理解】
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

//创建汽车的类
/*
 类名： Car
 属性： 轮子个数 _wheels,_speed
 方法： 跑 (run)
 */

//定义类，类的声明，类的实现

#pragma mark Car类的声明
@interface Car : NSObject
{
@public
    //  轮子个数
    int _wheels;
    //  速度（km/h）
    double _speed;
}

- (void) run;


@end

#pragma mark -

#pragma mark Car类的实现

//实现
@implementation Car
//实现声明中的方法
- (void)run
{
    NSLog(@"以%.2lfkm/h 的速度跑",_speed);
}



@end


//    int sum(int num1,int num2);

int main(int argc, const char * argv[]) {

   Car *car1 =  [Car new];
    
//    run();  错误的

    
//    int rs = sum(10, 20);
//    NSLog(@"%d",rs);
    
    [car1 run];
    return 0;
}


