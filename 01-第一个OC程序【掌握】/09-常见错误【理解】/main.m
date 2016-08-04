//
//  main.m
//  09-常见错误【理解】
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
//   不可以定义类的时候初始化成员变量
//    int _wheel = 10;  错误的
    //  速度（km/h）
    
     double _speed;
    
//  static  double _speed;错误的
    
    
//   - (void) run;  错误
}

//int _gas; //错误

//- static (void) run;错误的
- (void) run;

- (void) test;

@end


@interface Person : NSObject

@end

@implementation Person


@end



//@interface  与 @implementation 不可嵌套
//@interface Peson : NSObject
//
//
//@implementation
//
//@end
//
//@end


int main(int argc, const char * argv[]) {

    
    Car *car1 =  [Car new];
    car1->_speed = 100;
    [car1 run];
/*
 经典错误（请务必记住）  -[Car test]: unrecognized selector sent to instance 0x100200250
 当你看到这个错误的时候，必须马上反应过来，该类中没有实现这个方法
 */
    [car1 test];
    
    return 0;
}

#pragma mark -

#pragma mark Car类的实现

//实现 OC弱语法可以只有实现，但是你就不要这么写了
@implementation Car// : NSObject
//{
//@public
//        //  轮子个数
//        int _wheels;
//        //  速度（km/h）
//        double _speed;
//
//}
//实现声明中的方法
- (void)run
{
    NSLog(@"以%.2lfkm/h 的速度跑",_speed);
}



@end
