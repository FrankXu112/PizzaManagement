//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
#import "InputHandler.h"
#import "RegularManager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"
#import "DeliveryCar.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"PIZZA TIME");
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        CheeryManager *cheeryManager = [CheeryManager new];
        RegularManager *regularManager = [RegularManager new];
        DeliveryService *deliveryService = [DeliveryService new];
        cheeryManager.deliveryService = deliveryService;
        regularManager.deliveryService = deliveryService;
        
        while (TRUE) {
            
            NSLog(@"Do you deal with the 'regular' manager or the one that looks especially 'cheery'?\n>");
            InputHandler *managerPreference = [InputHandler new];
            NSString *userManagerChoice = [managerPreference getUserInput];
            
            if ([userManagerChoice isEqualToString:@"cheery"]) {
                restaurantKitchen.delegate = cheeryManager;
            } else if ([userManagerChoice isEqualToString:@"regular"]) {
                restaurantKitchen.delegate = regularManager;
            } else {
                NSLog(@"Please pick either 'cheery' or 'regular'...");
                break;
            }
            
            NSLog(@"Please input your pizza size (small, medium, or large), then any number of toppings");
            InputHandler *inputString = [InputHandler new];
            
            NSArray *commandWords = [[inputString getUserInput] componentsSeparatedByString:@" "];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1,[commandWords count]-1)];
            PizzaSize size = [Pizza sizeSelector:commandWords[0]];
            
            Pizza *newPizza = [restaurantKitchen makePizzaWithSize:size toppings:toppings];
            
            
            if (newPizza) {
                NSLog(@"You got a %@ %@ pizza!", [newPizza sizeToString:newPizza.size], toppings);
            } else {
                NSLog(@"The regular manager doesn't make pizzas with anchovies");
            }
            
            
            NSLog(@"Your Pizzas is being delivered now. Pizzas delivered so far:%@",[deliveryService descriptionsOfPizza]);
            
            continue;
        }
    }
    return 0;
}
