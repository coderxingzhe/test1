//
//  main.m
//  07-对象的存储细节【理解】
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



#pragma mark -
#pragma mark main方法
int main(int argc, const char * argv[]) {

    Car * car1 =  [Car new];
    car1->_speed = 100.0;
    car1->_wheels = 4;
    
    [car1 run];
    
    Car *car2 = [Car new];
    car2->_speed = 40.0;
    car2->_wheels = 3;
    
    car2 = car1;
    
    
    [car2 run];//输出的结果
    
    return 0;
}
