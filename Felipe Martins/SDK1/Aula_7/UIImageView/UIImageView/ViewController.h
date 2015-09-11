//
//  ViewController.h
//  UIImageView
//
//  Created by Felipe Martins on 14/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *imageViewMeme;
- (IBAction)exibir:(UIButton *)sender;
- (IBAction)ocultar:(UIButton *)sender;

@end
