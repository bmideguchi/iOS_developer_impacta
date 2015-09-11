//
//  ViewController.h
//  PropriedadesDeElementos
//
//  Created by Felipe Martins on 03/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Criação das propriedades que referenciam nossas labels em tela.

@property (nonatomic, retain) IBOutlet UILabel *labelNome;
@property (nonatomic, retain) IBOutlet UILabel *labelIdade;

// Criação dos métodos que serão disparados pelos nossos botões

-(IBAction)clicarBotaoNome:(id)sender;
-(IBAction)clicarBotaoIdade:(id)sender;

@end
