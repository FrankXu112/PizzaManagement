//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Frank Xu on 2018-08-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size andWithToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        _toppings = toppings;
        _size = size;
        
    }
    return self;
}

+(PizzaSize)sizeSelector:(NSString *)sizeString
{
    
    if ([sizeString isEqualToString:@"large"]) {
        return Large;
    }
    else if ([sizeString isEqualToString:@"medium"]){
        return Medium;
    }
    else{
        return Small;
    }
}

-(NSString *)sizeToString:(PizzaSize)size
{
    switch (size) {
        case 0:
            return @"small";
            break;
            
        case 1:
            return @"medium";
            break;
            
        case 2:
            return @"large";
            break;
            
        default:
            break;
    }
    
    return nil;
    
}

@end
