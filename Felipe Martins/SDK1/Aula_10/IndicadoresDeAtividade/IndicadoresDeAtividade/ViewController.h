//
//  ViewController.h
//  IndicadoresDeAtividade
//
//  Created by Felipe Martins on 24/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/*UIActivityIndicatorView
 
 um activityIndicator é um indicador de atividade padrão do iOS.
 
 Basicamente sua implementação e controle é baseada em 2 métodos.
 
    -startAnimating - inicia a animação
 
    -stopAnimating - Para a animação
 
 */

@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *meuActivityIndicator;


/* UISwitch
 
 Funciona como um radioButton, permitindo apenas uma escolha por vez, ligado ou desligado.
 
 Pode ser visualizado no iPhone na guia de configurações
 
 */

@property (retain, nonatomic) IBOutlet UISwitch *meuSwitch;


- (IBAction)alterarSwitch:(UISwitch *)sender;

/*  UIProgressView
 
 É uma barra de progresso, normalmente usada para indicar um processo que exige mais tempo, como por exemplo um download, um processmento matemático que exige um maior tempo de espera ou uma consulta demorada em um Banco de dados.
 
 */

@property (retain, nonatomic) IBOutlet UIProgressView *meuProgress;



/*UIStepper
 
UIStepper é basicamente um elemento em tela que pode trabalhar com autoincremento ou autodecremento.
 
 */

@property (retain, nonatomic) IBOutlet UIStepper *meuStepper;



- (IBAction)alterarStepper:(UIStepper *)sender;


@end
