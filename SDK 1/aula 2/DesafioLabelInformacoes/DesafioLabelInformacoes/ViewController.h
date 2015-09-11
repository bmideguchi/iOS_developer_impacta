//
//  ViewController.h
//  DesafioLabelInformacoes
//
//  Created by Felipe Martins on 03/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (nonatomic, retain) IBOutlet UILabel *labelNome, *labelIdade, *labelAltura;



// Criando as Ações


-(IBAction)clicarBotaoNome:(id)sender;
-(IBAction)clicarBotaoIdade:(id)sender;
-(IBAction)clicarBotaoAltura:(id)sender;

//

-(IBAction)clicarBotaoMostrarTudao:(id)sender;

@end
