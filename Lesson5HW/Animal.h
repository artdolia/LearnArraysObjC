//
//  Animal.h
//  Lesson5HW
//
//  Created by A D on 12/3/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

//@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) BOOL isHairy;
@property (strong, nonatomic) NSString * bride;
@property (strong, nonatomic) NSString * name;

-(NSString*) move;

@end
