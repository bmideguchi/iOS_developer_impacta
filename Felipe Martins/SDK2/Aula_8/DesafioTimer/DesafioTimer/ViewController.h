//
//  ViewController.h
//  DesafioTimer
//
//  Created by Felipe Martins on 15/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Outlets dos objetos em tela
@property (weak, nonatomic) IBOutlet UIDatePicker *meuDatePicker;
@property (weak, nonatomic) IBOutlet UILabel *labelContagem;
@property (weak, nonatomic) IBOutlet UIButton *botaoIniciar;


//

@property (nonatomic, strong) NSTimer *temporizador;
@property (nonatomic, assign) int contador;

//

- (IBAction)iniciar:(UIButton *)sender;


// Método que será disparado pelo timer
-(void)gerenciarContagem;


@end
