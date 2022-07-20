//
//  Student.h
//  homework2
//
//  Created by Yilin Wang on 2022/7/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    NSString *name;
    NSString *major;
    NSInteger age;
}

- (void)study:(float)time;

@end

NS_ASSUME_NONNULL_END
