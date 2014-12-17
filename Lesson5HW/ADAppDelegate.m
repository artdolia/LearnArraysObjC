//
//  ADAppDelegate.m
//  Lesson5HW
//
//  Created by A D on 12/2/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "ADAppDelegate.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Byciclist.h"
#import "Sportsman.h"
#import "Bever.h"
#import "Camel.h"
#import "Human.h"
#import "Animal.h"

@implementation ADAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //create the object for each class
    Runner* runner = [[Runner alloc] init];
    Swimmer* swimmer = [[Swimmer alloc] init];
    Byciclist* byciclist = [[Byciclist alloc] init];
    Sportsman* sportsman = [[Sportsman alloc] init];
    
    //create instances of Animal class
    Bever* bever = [[Bever alloc] init];
    Camel* camel = [[Camel alloc] init];
    
    //set properties for each entity
    bever.isHairy = 0;
    bever.bride = @"grizun";
    bever.name = @"Bever";
    
    camel.isHairy = 1;
    camel.bride = @"desertShip";
    camel.name = @"Camel";
    
    sportsman.name = @"Sportsman";
    sportsman.weight = 255.5f;
    sportsman.height = 4.7f;
    sportsman.gender = @"Male";
    sportsman.hairColor = @"superBlond";
    sportsman.walkSpeed = 3.5f;
    
    runner.name = @"ARunner";
    runner.weight = 155.5f;
    runner.height = 6.7f;
    runner.gender = @"Male";
    
    swimmer.name = @"Swimmer";
    swimmer.weight = 135.5f;
    swimmer.height = 5.7f;
    swimmer.gender = @"Female";
    
    byciclist.name = @"Rider";
    byciclist.weight = 178.5f;
    byciclist.height = 7.7f;
    byciclist.gender = @"Female";
    
    /*
    //Master Level
    NSArray* array = [[NSArray alloc] initWithObjects:runner, swimmer, bever, byciclist, camel, sportsman, nil];
    
    for (Human* creature in array){
        
        if([creature isKindOfClass:[Human class]]){
            
            NSLog(@"Human");
        
            NSLog(@"My name is %@, my weight is %f, my height is %f, I am a %@ and I can %@",
                creature.name, creature.weight, creature.height, creature.gender,[creature move]);
            if([creature isKindOfClass:[Sportsman class]]){
                Sportsman* someMan = (Sportsman*)creature;
                NSLog(@"My hair color is %@, and my walking speed is %f",  someMan.hairColor, someMan.walkSpeed );
            }
        }else{
            
            Animal* animal = (Animal*)creature;
            
            NSLog(@"Animal");
            NSLog(@"I am %@, my bride is %@, do I have hair? %@! And I can %@", animal.name, animal.bride, animal.isHairy ? @"Yes" : @"No", [animal move]);
        }
    }
    */
    
    /*
    //Star Level
    NSArray *animals = [NSArray arrayWithObjects:bever, camel, nil];
    NSArray *humans = [NSArray arrayWithObjects:byciclist, swimmer, runner, sportsman, nil];
    
    NSInteger count;
    
    if([animals count] >= [humans count]){
        
        count = [animals count];
        
    }else
        count = [humans count];
        
    
    for(int i = 0; i<= count; i++){
        
        if(i < [humans count]){
        
            Human * creature = [humans objectAtIndex:i];
            
            NSLog(@"My name is %@, my weight is %f, my height is %f, I am a %@ and I can %@",
                  creature.name, creature.weight, creature.height, creature.gender,[creature move]);
            if([creature isKindOfClass:[Sportsman class]]){
                Sportsman* someMan = (Sportsman*)creature;
                NSLog(@"My hair color is %@, and my walking speed is %f",  someMan.hairColor, someMan.walkSpeed );
            }
        }
        
        if(i < [animals count]){
            
            Animal * animal = [animals objectAtIndex:i];
            
            NSLog(@"I am %@, my bride is %@, do I have hair? %@! And I can %@", animal.name, animal.bride, animal.isHairy ? @"Yes" : @"No", [animal move]);
        }
    }
    
     */
    
    //Superman Level
    NSArray* unsortedArray = [[NSArray alloc] initWithObjects:runner, swimmer, bever, byciclist, camel, sportsman, nil];
    
    NSArray* sortedArray = [unsortedArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2){
        
        if([obj1 isKindOfClass:[Human class]] && [obj2 isKindOfClass:[Human class]]){
            
            return [[(Human*)obj1 name] compare:[(Human*)obj2 name]];
            
        }else if([obj1 isKindOfClass:[Animal class]] && [obj2 isKindOfClass:[Animal class]]){
            
            return [[(Animal*)obj1 name] compare:[(Animal*)obj2 name]];
        
        }else if ([obj1 isKindOfClass:[Human class]]){
        
            return NSOrderedAscending;
            
        } else{
            
            return NSOrderedDescending;
        }
    }];
    
    for (Human* creature in sortedArray){

        if([creature isKindOfClass:[Human class]]){

            NSLog(@"My name is %@", creature.name);
        
        }else{

            Animal* animal = (Animal *)creature;
            NSLog(@"I am %@", animal.name);
        }
    }

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
