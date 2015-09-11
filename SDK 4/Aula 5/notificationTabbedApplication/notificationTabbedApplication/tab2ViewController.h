//
//  tab2ViewController.h
//  notificationTabbedApplication
//
//  Created by NoiteA on 21/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tab2ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldUnica;

- (IBAction)dispararNotificacao:(UIButton *)sender;

@end
