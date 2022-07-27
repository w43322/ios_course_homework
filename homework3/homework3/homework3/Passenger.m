//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Order

- (void)printOrderWithIndex:(NSInteger)idx
{
    NSString *format;
    switch (idx%10)
    {
        case 1:
            format = @"st";
            break;
        case 2:
            format = @"nd";
            break;
        case 3:
            format = @"rd";
            break;
        default:
            format = @"th";
    }
    NSLog(@"    %lu%@ Order: ORIG - %@ | DEST - %@", idx, format, self.Origin, self.Destination);
}

@end

@implementation Passenger

- (instancetype)init
{
    if (self = [super init])
    {
        self.oldOrders = [[NSMutableArray alloc] init];
        self.pendingOrders = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL)isOlderThan18
{
    return self.age / 60 / 60 / 24 / 365 >= 18;
}

- (void)createNewOrderWithOrig:(NSString *)orig AndDest:(NSString *)dest
{
    NSLog(@"--------Creating New Order--------");
    
    Order *newOrder = [[Order alloc] init];
    [newOrder setOrigin:orig];
    [newOrder setDestination:dest];
    [newOrder setCreate:[NSDate date]];
    [self.pendingOrders addObject:newOrder];
    
    NSLog(@"New order created:");
    NSLog(@"    Origin: %@, Destination: %@", orig, dest);
    NSLog(@"    Order placement time: %@", [NSDateFormatter localizedStringFromDate:newOrder.Create dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterShortStyle]);

    [self printPendingOrders];
}

- (void)checkIn:(NSString *)orig :(NSString *)dest
{
    NSLog(@"--------Checking In--------");
    NSLog(@"Origin: %@, Destination: %@", orig, dest);
    for (Order *obj in self.pendingOrders)
    {
        if (obj.Origin == orig && obj.Destination == dest)
        {
            [obj setCheckIn:[NSDate date]];
            NSLog(@"Check-in success:");
            NSLog(@"    Pending order found, moving to old orders.");
            NSLog(@"    Check-in time: %@", [NSDateFormatter localizedStringFromDate:obj.CheckIn dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterShortStyle]);
            [self.oldOrders addObject:obj];
            [self.pendingOrders removeObject:obj];
            [self printOldOrders];
            return;
        }
    }
    
    NSLog(@"Check-in failed:");
    NSLog(@"    You don't have an order with the desired city pair!");
    [self printPendingOrders];
}

- (void)printPendingOrders
{
    NSLog(@"--------Printing Pending Orders----");
    NSLog(@"There are %lu pending orders:", [self.pendingOrders count]);
    [self.pendingOrders enumerateObjectsUsingBlock:^(Order *obj, NSUInteger idx, BOOL *stop)
    {
        [obj printOrderWithIndex:idx + 1];
    }];
}

- (void)printOldOrders
{
    NSLog(@"--------Printing Old Orders----");
    NSLog(@"There are %lu old orders:", [self.oldOrders count]);
    [self.oldOrders enumerateObjectsUsingBlock:^(Order *obj, NSUInteger idx, BOOL *stop)
    {
        [obj printOrderWithIndex:idx + 1];
    }];
}

- (void)printPassengerInfo
{
    NSLog(@"--------Printing Passenger Info--------");
    
    [self printPersonInfo];
    NSLog(@"This passenger is %@older than 18.", self.isOlderThan18 ? @"" : @"NOT ");
    
}

@end
