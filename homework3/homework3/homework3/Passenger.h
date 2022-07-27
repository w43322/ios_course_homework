//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Order : NSObject

// 出发地
@property (nonatomic, copy) NSString *Origin;
// 目的地
@property (nonatomic, copy) NSString *Destination;
// 订票时间
@property (nonatomic, strong) NSDate *Create;
// 检票时间
@property (nonatomic, strong) NSDate *CheckIn;
// 打印订单信息
- (void)printOrderWithIndex:(NSInteger)idx;

@end

@interface Passenger : Person
// @property 属性

// 是否年满 18 岁
@property (nonatomic, assign, readonly) BOOL isOlderThan18;
// 历史订单 （数组）
@property (nonatomic) NSMutableArray *oldOrders;
// 未出行订单 （数组）
@property (nonatomic) NSMutableArray *pendingOrders;

// Function 方法
// 去订票
- (void)createNewOrderWithOrig:(NSString *)orig AndDest:(NSString *)dest;
// 去检票
- (void)checkIn:(NSString *)orig :(NSString *)dest;

- (void)printPendingOrders;
- (void)printOldOrders;
- (void)printPassengerInfo;
@end

NS_ASSUME_NONNULL_END
