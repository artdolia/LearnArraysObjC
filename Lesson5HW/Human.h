//
//  Human.h
//  Lesson5HW
//
//  Created by A D on 12/2/13.
//  Copyright (c) 2013 AD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* gender;

-(NSString*) move;

@end
