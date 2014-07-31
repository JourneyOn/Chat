//
//  AddContactVC.h
//  Chat
//
//  Created by shupeng on 14-7-29.
//  Copyright (c) 2014年 John. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol AddContactVCDelegate <NSObject>
@optional
- (void)addContactVCDidAddContact;
@end


@interface AddContactVC : UIViewController
@property (assign, nonatomic) id<AddContactVCDelegate> delegate;
@end
