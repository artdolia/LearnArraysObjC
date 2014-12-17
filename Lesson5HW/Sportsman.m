//
//  Sportsman.m
//  Lesson5HW
//
//  Created by A D on 12/2/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import "Sportsman.h"

@implementation Sportsman

-(NSString*) move{
    
    NSString* moveSuper = [super move];
    NSString* move = [NSString stringWithFormat:@"Fly"];
    return [NSString stringWithFormat:@" %@ and %@", moveSuper, move];
}

@end
