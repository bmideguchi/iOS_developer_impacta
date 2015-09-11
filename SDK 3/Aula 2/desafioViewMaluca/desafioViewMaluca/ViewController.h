//
//  ViewController.h
//  desafioViewMaluca
//
//  Created by NoiteA on 22/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Property para viewzinha
@property (weak, nonatomic) IBOutlet UIView *viewzinha;

//Action para o botão animar
- (IBAction)animar:(UIButton *)sender;

//Criamos um NSTimer
@property (nonatomic, strong)NSTimer * temporizador;

//Método que será disparado pelo timer e animará nossa viewzinha
- (void)metodoQueCriaAnimacao;

@end
