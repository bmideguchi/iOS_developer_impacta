//
//  telaIMCViewController.h
//  aula3Desafio2
//
//  Created by NoiteA on 01/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface telaIMCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelPeso;

@property (weak, nonatomic) IBOutlet UILabel *labelAltura;

@property (weak, nonatomic) IBOutlet UILabel *labelIMC;


- (IBAction)sliderPeso:(UISlider *)sender;
- (IBAction)sliderAltura:(UISlider *)sender;

@end
