//
//  ViewController.h
//  DesafioDesbloqueiaPersonagens
//
//  Created by Felipe Martins on 01/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *botaoPersonagem1;

@property (weak, nonatomic) IBOutlet UIButton *botaoPersonagem2;
@property (weak, nonatomic) IBOutlet UIButton *botaoPersonagem3;
@property (weak, nonatomic) IBOutlet UIButton *botaoPersonagem4;
@property (weak, nonatomic) IBOutlet UIButton *botaoPersonagem5;

//
@property (weak, nonatomic) IBOutlet UISlider *sliderLiberacoes;

- (IBAction)liberarPersonagens:(UISlider *)sender;


@end
