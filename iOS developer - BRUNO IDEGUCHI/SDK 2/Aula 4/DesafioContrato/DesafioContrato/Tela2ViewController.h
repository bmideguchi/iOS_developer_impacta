//
//  Tela2ViewController.h
//  DesafioContrato
//
//  Created by Felipe Martins on 05/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tela2ViewController : UIViewController




@property (weak, nonatomic) IBOutlet UITextView *textViewContrato;

// Criamos o dicionario que receberá os dados passados pela tela anterior via Segue.

@property(nonatomic, strong) NSDictionary *dicionarioDadosTelaPrincipal;

@end
