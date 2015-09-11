//
//  ViewController.h
//  animacaoDeView
//
//  Created by NoiteA on 19/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *viewzinha;

@property (weak, nonatomic) IBOutlet UILabel *labelUnica;

- (IBAction)animar:(UIButton *)sender;



@end
