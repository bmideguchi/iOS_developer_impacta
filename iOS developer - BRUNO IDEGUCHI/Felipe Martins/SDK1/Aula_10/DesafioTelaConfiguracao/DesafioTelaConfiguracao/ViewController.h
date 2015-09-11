//
//  ViewController.h
//  DesafioTelaConfiguracao
//
//  Created by Felipe Martins on 24/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


// IBOutlets
@property (retain, nonatomic) IBOutlet UILabel *labelTitulo;
@property (retain, nonatomic) IBOutlet UILabel *labelHabilitaConfiguracoes;
@property (retain, nonatomic) IBOutlet UISwitch *switchHabilitaConfiguracoes;
@property (retain, nonatomic) IBOutlet UILabel *labelInverterCores;
@property (retain, nonatomic) IBOutlet UISwitch *switchInverteCores;
@property (retain, nonatomic) IBOutlet UILabel *labelContagem;
@property (retain, nonatomic) IBOutlet UIStepper *stepperContador;
@property (retain, nonatomic) IBOutlet UISlider *sliderProgress;
@property (retain, nonatomic) IBOutlet UIProgressView *meuProgress;

// IBActions

- (IBAction)habilitarConfiguracoes:(UISwitch *)sender;
- (IBAction)inverterCores:(UISwitch *)sender;
- (IBAction)alterarStepper:(UIStepper *)sender;
- (IBAction)alterarSlider:(UISlider *)sender;




// Métodos próprios sem retorno e sem parametros
// Executam um determinado trecho de código

-(void)bloquearTudo;
-(void)liberarTudo;

@end
