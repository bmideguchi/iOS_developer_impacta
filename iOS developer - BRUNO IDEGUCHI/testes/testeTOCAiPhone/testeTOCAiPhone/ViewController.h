//
//  ViewController.h
//  testeTOCAiPhone
//
//  Created by NoiteA on 28/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) UIView *viewAzul;
@property (nonatomic, strong) UIView *viewLaranja;
@property (nonatomic, strong) UIView *viewAzulSlot;
-(IBAction)moverPan:(UIPanGestureRecognizer *)recognizer;
@end
