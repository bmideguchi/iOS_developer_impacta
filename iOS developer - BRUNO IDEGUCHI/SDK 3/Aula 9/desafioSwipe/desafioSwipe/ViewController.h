//
//  ViewController.h
//  desafioSwipe
//
//  Created by NoiteA on 07/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIGestureRecognizerDelegate>

@property (strong, nonatomic) IBOutlet UIView *minhaViewzinha;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *meuSwipe;
- (IBAction)swiparViewzinha:(UISwipeGestureRecognizer *)sender;
@end
