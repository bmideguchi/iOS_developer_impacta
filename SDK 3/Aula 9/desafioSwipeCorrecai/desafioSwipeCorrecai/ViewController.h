//
//  ViewController.h
//  desafioSwipeCorrecai
//
//  Created by NoiteA on 07/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *viewzinha;


- (IBAction)swipeCima:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeBaixo:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeEsquerda:(UISwipeGestureRecognizer *)sender;
- (IBAction)swipeDireita:(UISwipeGestureRecognizer *)sender;
- (IBAction)disparouTapGestureRecognizer:(UITapGestureRecognizer *)sender;




@end
