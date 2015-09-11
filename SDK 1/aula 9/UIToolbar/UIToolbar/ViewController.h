//
//  ViewController.h
//  UIToolbar
//
//  Created by NoiteA on 21/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextView *textViewLetra;


- (IBAction)voltar:(UIBarButtonItem *)sender;


- (IBAction)play:(UIBarButtonItem *)sender;


- (IBAction)avancar:(UIBarButtonItem *)sender;




@end
