//
//  RegularManager.h
//  PizzaRestaurant
//
//  Created by Frank Xu on 2018-08-21.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface RegularManager : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@end
