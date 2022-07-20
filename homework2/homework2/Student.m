//
//  Student.m
//  homework2
//
//  Created by Yilin Wang on 2022/7/20.
//

#import "Student.h"

@implementation Student


- (void)study:(float)time
{
    NSLog(@"-----Student-----\n");
    NSLog(@"Name: %@\n", name);
    NSLog(@"Major: %@\n", major);
    NSLog(@"Age: %ld\n", age);
    NSLog(@"Studied for %f hours.\n", time);
}

@end
