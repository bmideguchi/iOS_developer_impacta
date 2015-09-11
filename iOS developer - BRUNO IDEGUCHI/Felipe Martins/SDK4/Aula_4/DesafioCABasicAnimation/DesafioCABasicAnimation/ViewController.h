//
//  ViewController.h
//  DesafioCABasicAnimation
//
//  Created by Felipe Martins on 19/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;

//

- (IBAction)aumentarTamanho:(UIButton *)sender;
- (IBAction)diminuirTamanho:(UIButton *)sender;
- (IBAction)aumentarPosicao:(UIButton *)sender;
- (IBAction)diminuirPosicao:(UIButton *)sender;
- (IBAction)aumentarRotacao:(UIButton *)sender;
- (IBAction)diminuirRotacao:(UIButton *)sender;
- (IBAction)aumentarOpacidade:(UIButton *)sender;
- (IBAction)diminuirOpacidade:(UIButton *)sender;









@end
