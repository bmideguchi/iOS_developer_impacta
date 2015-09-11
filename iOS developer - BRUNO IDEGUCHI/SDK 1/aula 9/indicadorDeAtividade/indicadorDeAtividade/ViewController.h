//
//  ViewController.h
//  indicadorDeAtividade
//
//  Created by NoiteA on 24/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

 /*
 ============| UI Activity Indicator |============
 
 Um Activity Indicatir é um indicador de atividade padrão do iOS.
 
 Basicamente sua implementação e controle é baseada em 2 métodos.
 
 -startAnimating - inicia a animação
 -stopAnimating - para a animação
 
 */

//Declaração do UIActivityIndicator
@property (retain, nonatomic) IBOutlet UIActivityIndicatorView *meuActivityIndicator;







/*
 ============| UI Switch |============
 
 Funciona como um radioButton, permitindo apenas uma escolha por ve, ligado ou desligado.
 
 Pode ser visualizado no iPhone na guia de configurações
 
 */

//Declaração do UI Switch
@property (retain, nonatomic) IBOutlet UISwitch *meuSwitch;

//Action de UI Switch
- (IBAction)alterarSwitch:(UISwitch *)sender;







/*
 ============| UI Progress View |============
 
 É uma barra de progresso, normalmente usada para indicar um processo que exige mais tempo, como por exemplo um download, um processamento matemático que exige mais tempo de espera, ou uma consulta demorada em banco de dados.
 
 */
//Declaração do progress view
@property (retain, nonatomic) IBOutlet UIProgressView *meuProgress;






/*
 ============| UI Stepper |============
 
 É um elemento em tela que pode trabalhar com autoincremento ou autodecremento.
 
 */
//Declaração do Stepper
@property (retain, nonatomic) IBOutlet UIStepper *meuStepper;

//Acrion do stepper
- (IBAction)alterarStepper:(UIStepper *)sender;

@end
