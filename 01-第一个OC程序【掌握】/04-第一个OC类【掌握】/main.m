//
//  main.m
//  04-第一个OC类【掌握】
//
//  Created by apple on 15/1/16.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 1.从现实生活中抽象出来一个类
 
 2.抽取“人” 类(设计一个类)
 
 类名  Person
 属性  姓名(name),性别（Sex）,年龄(age),身高(height)
 行为  chi(eat),睡（sleep）,打豆豆（fight）
 
 3.使用OC语言来描述这个类
   在OC中一个类包含两个部分，一个是声明，一个是实现
 
 创建一个张三对象
 
 */
/*
//类的声明

@interface 类名 : 父类的名称
{
//    成员变量（属性）
    成员类型 成员名称;
}

//声明方法
//方法分为两类 对象方法，类方法
//对象方法以减号开头
//无参
- (返回值类型) 方法名称;

@end

//类的实现：实现声明中的方法

@implementation 类名

- (返回值类型) 方法名称
{
     //语句;
      .....
}

@end
*/

/*
 
 类名  Person
 属性  姓名(name),性别（Sex）,年龄(age),身高(height)
 行为  吃(eat),睡（sleep）,打豆豆（fight）
 
 
 */

typedef enum {
   SexMan,
   SexWoman,
   SexOther
} Sex;



//Person类的声明
//:NSObject 让我们定义的这个类具有创建对象的能力
@interface Person : NSObject
{
@public
//  属性（成员变量）
    char *name;
    Sex  sex;
    int  age;
    double height;
}

//方法
//吃
- (void) eat;
//睡
- (void) sleep;

@end

//类的实现
@implementation Person

//吃
- (void) eat
{
    NSLog(@"吃");
}

//睡1
- (void) sleep
{
    NSLog(@"睡");
}

@end



int main(int argc, const char * argv[]) {
   
//  创建对象 [类名  new];
// new做了三件事：1.开辟存储空间，2.初始化成员变量（全部初始化为0） 3.返回指向该对象的指针
//  OC中通过对象调用方法，都需要中括号
    Person *p  = [Person new];
//  通过对象访问成员变量，与C语言的指针向结构体指针去方法它所指向的结构的成员的方法相同
    p->age = 20;
//    p->name = "张三";
    p->name = "zhangsan";
    
//  NSLog 不支持使用%s输出一个中文的变量
    
    NSLog(@"name = %s,age = %d",p->name,p->age);
    
//  面向对象的思想，指挥对象做事情
//  格式： [对象  方法名+参数]
    [p sleep];
    
    
    
    
    
    return 0;
}
