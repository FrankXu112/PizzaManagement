//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Frank Xu on 2018-08-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger{
    Small,
    Medium,
    Large
} PizzaSize;

@interface Pizza : NSObject

@property PizzaSize size;
@property NSArray *toppings;

-(instancetype)initWithSize:(PizzaSize)pizzaSize andWithToppings:(NSArray *)toppings;
-(NSString *)sizeToString:(PizzaSize)pizzaSize;
+(PizzaSize)sizeSelector:(NSString *)sizeString;

@end
