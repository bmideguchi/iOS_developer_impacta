//
//  Tela2ViewController.m
//  DesafioNotificationCenter
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.coordenadas = [[CLLocation alloc]init];
    
    self.gerenciadorGps = [[CLLocationManager alloc]init];
    
    self.gerenciadorGps.desiredAccuracy = kCLLocationAccuracyBest;
    
    self.gerenciadorGps.delegate = self;
    
    [self.gerenciadorGps startUpdatingLocation];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rastrearPosicao:(UIButton *)sender {
    
    
    if (self.textFieldNome.text.length > 0 && self.textFieldSobrenome.text.length > 0 && self.textFieldTelefone.text.length > 0) {
        
        
        
        // Colocando a posição nas labels
        self.labelLatitude.text = [NSString stringWithFormat:@"%f", self.coordenadas.coordinate.latitude];
        
        self.labelLongitude.text = [NSString stringWithFormat:@"%f", self.coordenadas.coordinate.longitude];
        
        // Agora que já temos as informações necessárias criamos o dicionário par ser passado como parâmetro
        NSDictionary *dicionarioDados = @{@"posicao": self.coordenadas, @"nome": self.textFieldNome.text, @"sobrenome": self.textFieldSobrenome.text, @"telefone":self.textFieldTelefone.text};
        
        // Criando o objeto de notification center
        NSNotificationCenter *centroNotificacoes = [NSNotificationCenter defaultCenter];
        
        [centroNotificacoes postNotificationName:@"NOTIFICACAO" object:nil userInfo:dicionarioDados];
        
        
        
        
    }else{
    
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Aviso!" message:@"Digite corretamente os dados acima e depois clique em rastrear posição" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    
        [alerta show];
    
    
    }
    
    
    
    
    
    
    
}




-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{


    self.coordenadas = [locations lastObject];


}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{


    [self becomeFirstResponder];


}

-(BOOL)canBecomeFirstResponder{

    return YES;

}



@end
