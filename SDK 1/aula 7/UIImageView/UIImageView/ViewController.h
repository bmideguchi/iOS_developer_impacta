//
//  ViewController.h
//  UIImageView
//
//  Created by NoiteA on 14/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageViewMeme;

- (IBAction)exibir:(UIButton *)sender;
- (IBAction)Ocultar:(UIButton *)sender;

@end
