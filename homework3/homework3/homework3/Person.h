//
//  Person.h
//  homework3
//
//  Created by Yilin Wang on 2022/7/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, readonly, assign) NSInteger age;
@property (nonatomic, assign) BOOL sex;


@end

NS_ASSUME_NONNULL_END
