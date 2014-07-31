//
//  AddContactVC.m
//  Chat
//
//  Created by shupeng on 14-7-29.
//  Copyright (c) 2014年 John. All rights reserved.
//

#import "AddContactVC.h"
#import "AddContactVCHelper.h"

@interface AddContactVC () <UITextFieldDelegate>
{
    __weak IBOutlet UITextField *textField;
    AddContactVCHelper *_helper;
}
@end

@implementation AddContactVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

        _helper = [AddContactVCHelper new];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.title = @"Add Contact";
    
    UIBarButtonItem *saveBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveBtnPressed:)];
    self.navigationItem.rightBarButtonItem = saveBtn;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [textField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UIView Event 
- (void)saveBtnPressed:(UIBarButtonItem *)sender
{
    NSError *error = [_helper addContactWithName:textField.text];
    if (error == nil) {
        // dismiss keyboard
        [self.view endEditing:YES];
        
        // nodify save success
        if ([self.delegate respondsToSelector:@selector(addContactVCDidAddContact)]) {
            [self.delegate addContactVCDidAddContact];
        }
        
        // pop self
        [self.navigationController popViewControllerAnimated:YES];
    }
    else{
        // hud error message
        
    }
}

#pragma mark - TextField Delegate
- (IBAction)didEndOnExit:(id)sender {
    
}
@end
