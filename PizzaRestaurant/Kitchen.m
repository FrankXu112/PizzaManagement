//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    
    SEL didMake = @selector(kitchenDidMakePizza:);
    
    Pizza *pizza = nil;
    
    if (self.delegate) {
        
        
        if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            
            pizza = [[Pizza alloc] initWithSize:size andWithToppings:toppings];
            
            
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                
                pizza = [[Pizza alloc] initWithSize:Large andWithToppings:toppings];
                
            }
            
           
            if ([self.delegate respondsToSelector:didMake]) {
                [self.delegate kitchenDidMakePizza:pizza];
            }
        }
    }
    
    return pizza;
}

@end
