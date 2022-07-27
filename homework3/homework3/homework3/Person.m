//
//  Person.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

@implementation Address
- (void)printAddress
{
    NSLog(@"Address:");
    NSLog(@"    %@, %@, %@, %@", self.detail, self.city, self.province, self.country);
}
@end


@interface Person()

// private
@property (nonatomic, strong) NSDate *registerDate;
@property (nonatomic, strong) NSNumber *idNumber;

@property (nonatomic, strong) NSString *aaaa;
@end

@implementation Person

- (instancetype)initWithName:(NSString *)name address:(Address *)address birthday:(nonnull NSDate *)birthday{
    if (self = [super init]) {
        [self createPersonWithName:name address:address birthday:birthday];
    }
    return self;
}

- (void)createPersonWithName:(NSString *)name address:(Address *)address birthday:(nonnull NSDate *)birthday {
    
    self.name = name;
    self.address = address;
    self.birthday = birthday;
    self.registerDate = [NSDate date];
    
    [self fetchIDWithAddress:address birthday:birthday completion:^(NSNumber *number) {
        self.idNumber = number;
    }];
}

- (void)fetchIDWithAddress:(Address *)address birthday:(nonnull NSDate *)birthday completion:(void(^)(NSNumber *))completion {
    //NetWork
    if (completion) {
        completion(@(222222222222));
    }
}

- (void)bindMother:(Person *)mother {
    
    self.mother = mother;
}

- (void)bindFather:(Person *)father {
    
    self.father = father;
}

- (NSInteger)age {
    NSDate *now = [NSDate date];
    return [now timeIntervalSince1970] - [self.birthday timeIntervalSince1970];
}

- (void)printPersonInfo
{
    NSLog(@"Name: %@", self.name);
    [self.address printAddress];
    NSLog(@"Birthday: %@", [NSDateFormatter localizedStringFromDate:self.birthday dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterNoStyle]);
    NSLog(@"Age: %ld", self.age / 60 / 60 / 24 / 365);
}

@end
