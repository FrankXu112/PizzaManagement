//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Frank Xu on 2018-08-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Pizza;

@interface DeliveryService : NSObject

@property NSMutableArray *descriptionsOfPizza;

-(void)deliverPizza:(Pizza *)pizza;
-(NSMutableArray *)deliveredPizzaDescription;

@end
