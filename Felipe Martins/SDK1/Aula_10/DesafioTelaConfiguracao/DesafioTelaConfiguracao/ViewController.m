//
//  ViewController.m
//  DesafioTelaConfiguracao
//
//  Created by Felipe Martins on 24/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Configurando o limite do meu stepper
    self.stepperContador.minimumValue = 1.0;
    
    //HUGE_VAL - é uma constante que representa um número bem grande
    self.stepperContador.maximumValue = HUGE_VAL;
    
    // iniciando os switchs como off
    self.switchHabilitaConfiguracoes.on = NO;
    self.switchInverteCores.on = NO;
    
    // Forçando o método que controla as liberações
    [self habilitarConfiguracoes:self.switchHabilitaConfiguracoes];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_labelTitulo release];
    [_labelHabilitaConfiguracoes release];
    [_switchHabilitaConfiguracoes release];
    [_labelInverterCores release];
    [_switchInverteCores release];
    [_labelContagem release];
    [_stepperContador release];
    [_sliderProgress release];
    [_meuProgress release];
    [super dealloc];
}
- (IBAction)habilitarConfiguracoes:(UISwitch *)sender {
    
    if (sender.on) {
        
        // Chamamos o método que liberar tudo
        [self liberarTudo];
        
    }else{
    
        // Chamamos o método que bloqueia tudo
        
        [self bloquearTudo];
    
    }
    
}

- (IBAction)inverterCores:(UISwitch *)sender {
    
    
    if (sender.on) {
        
        self.view.backgroundColor = [UIColor blackColor];
        
        self.labelTitulo.backgroundColor = [UIColor whiteColor];
        self.labelTitulo.textColor = [UIColor blackColor];
        
        
        self.labelHabilitaConfiguracoes.textColor = [UIColor whiteColor];
        self.labelHabilitaConfiguracoes.backgroundColor = [UIColor blackColor];
        
        self.labelInverterCores.textColor = [UIColor whiteColor];
        self.labelInverterCores.backgroundColor = [UIColor blackColor];
        
        self.labelContagem.textColor = [UIColor blackColor];
        self.labelContagem.backgroundColor = [UIColor whiteColor];

        
        
    }else{
    
        self.view.backgroundColor = [UIColor whiteColor];
        
        self.labelTitulo.backgroundColor = [UIColor blackColor];
        self.labelTitulo.textColor = [UIColor whiteColor];
        
        
        self.labelHabilitaConfiguracoes.textColor = [UIColor blackColor];
        self.labelHabilitaConfiguracoes.backgroundColor = [UIColor whiteColor];
        
        self.labelInverterCores.textColor = [UIColor blackColor];
        self.labelInverterCores.backgroundColor = [UIColor whiteColor];
        
        self.labelContagem.textColor = [UIColor whiteColor];
        self.labelContagem.backgroundColor = [UIColor blackColor];
    
    
    
    }
    
    
}

- (IBAction)alterarStepper:(UIStepper *)sender {
    
    self.labelContagem.text = [NSString stringWithFormat:@"%0f", sender.value];
    
}

- (IBAction)alterarSlider:(UISlider *)sender {
    self.meuProgress.progress = sender.value;
}


-(void)bloquearTudo{

    self.switchInverteCores.enabled = NO;
    self.stepperContador.enabled = NO;
    self.sliderProgress.enabled = NO;

}



-(void)liberarTudo{

    self.switchInverteCores.enabled = YES;
    self.stepperContador.enabled = YES;
    self.sliderProgress.enabled = YES;

    

}






@end
