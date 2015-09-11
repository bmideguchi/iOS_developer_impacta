//
//  ViewController.h
//  NSTimer
//
//  Created by Felipe Martins on 12/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


// Criando um objeto do tipo NSTimer
@property (nonatomic, strong) NSTimer *temporizador;


- (IBAction)iniciar:(UIButton *)sender;
- (IBAction)parar:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *botaoIniciar;
@property (weak, nonatomic) IBOutlet UIButton *botaoParar;



-(void)metodoDisparadoPeloTimer;


@end
