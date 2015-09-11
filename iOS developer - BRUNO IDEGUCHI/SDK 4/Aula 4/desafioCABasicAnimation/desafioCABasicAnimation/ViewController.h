//
//  ViewController.h
//  desafioCABasicAnimation
//
//  Created by NoiteA on 19/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;

- (IBAction)tamanhoMais:(UIButton *)sender;
- (IBAction)tamanhoMenos:(UIButton *)sender;
- (IBAction)posicaoMais:(UIButton *)sender;
- (IBAction)posicaoMenos:(UIButton *)sender;
- (IBAction)rotacaoMais:(UIButton *)sender;
- (IBAction)rotacaoMenos:(UIButton *)sender;
- (IBAction)opacidadeMais:(UIButton *)sender;
- (IBAction)opacidadeMenos:(UIButton *)sender;

@property int variacao;

@end
