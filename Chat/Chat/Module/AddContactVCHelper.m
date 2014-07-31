//
//  AddContactVCHelper.m
//  Chat
//
//  Created by shupeng on 14-7-30.
//  Copyright (c) 2014年 John. All rights reserved.
//

#import "AddContactVCHelper.h"

@implementation AddContactVCHelper

- (NSError *)addContactWithName:(NSString *)contactName
{
    return [NSError errorWithDomain:@"AddContactVCHelper.h" code:1 userInfo:@{NSLocalizedDescriptionKey: @"Error :("}];
}
@end
