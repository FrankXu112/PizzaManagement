//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Frank Xu on 2018-08-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"
#import "DeliveryCar.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _descriptionsOfPizza = [NSMutableArray new];
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza
{
    DeliveryCar *deliveryCar = [DeliveryCar new];
    [deliveryCar deliverPizza:pizza];
    [_descriptionsOfPizza addObject:pizza.description];
}

-(NSMutableArray *)deliveredPizzaDescription
{
    return _descriptionsOfPizza;
}


@end
