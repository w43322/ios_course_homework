//
//  main.m
//  homework2
//
//  Created by Yilin Wang on 2022/7/20.
//

#import <Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Student *obj = [Student new];
        
        [obj setValue:@"Tang Kuku" forKey:@"name"];
        [obj setValue:@"School Idol" forKey:@"major"];
        [obj setValue:@15 forKey:@"age"];
        
        [obj study:7.17];
    }
    return 0;
}
