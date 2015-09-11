//
//  ViewController.h
//  desafioPreçoPassagem
//
//  Created by NoiteA on 14/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIImageView *imageViewIconePrincipal;

@property (retain, nonatomic) IBOutlet UISlider *sliderUnico;

@property (retain, nonatomic) IBOutlet UILabel *labelSliderUnico;

- (IBAction)mudarSliderUnico:(UISlider *)sender;
@end
