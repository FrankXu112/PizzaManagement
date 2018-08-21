//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Frank Xu on 2018-08-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
    
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    [_deliveryService deliverPizza:pizza];
    NSLog(@"Cheery manager likes you enough to upgrade your pizza to a large!");
}

@end
