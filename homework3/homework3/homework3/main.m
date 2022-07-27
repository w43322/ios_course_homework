//
//  main.m
//  homework3
//
//  Created by Yilin Wang on 2022/7/27.
//

#import <Foundation/Foundation.h>

#import "Passenger.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        Address *kukuAddress = [[Address alloc] init];
        [kukuAddress setDetail:@"Yuigaoka Joshi Koutou Gakkou"];
        [kukuAddress setCity:@"Shibuya"];
        [kukuAddress setProvince:@"Tokyo"];
        [kukuAddress setCountry:@"Japan"];
        NSDate *kukuBirthday = [[NSDate alloc] initWithTimeIntervalSince1970:1184650000];
        Passenger *kuku = [[[Passenger alloc] initWithName:@"Tang Kuku" address:kukuAddress birthday:kukuBirthday] init];
        
        [kuku printPassengerInfo];
        
        [kuku createNewOrderWithOrig:@"Kuku's Home" AndDest:@"School"];
        [kuku createNewOrderWithOrig:@"School" AndDest:@"Kuku's Home"];
        
        [kuku checkIn:@"Kuku's Home" :@"School"];
        [kuku checkIn:@"School" :@"Kanon's Home / Coffee Shop"];
    }
    return 0;
}
