//
//  DBManager.m
//  Chat
//
//  Created by shupeng on 14-7-30.
//  Copyright (c) 2014年 John. All rights reserved.
//

#import "DBManager.h"

DBManager *sharedInstance;

@implementation DBManager
+ (id)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

- (id)init
{
    if (self = [super init]) {
        
    }
    
    return self;
}
@end
