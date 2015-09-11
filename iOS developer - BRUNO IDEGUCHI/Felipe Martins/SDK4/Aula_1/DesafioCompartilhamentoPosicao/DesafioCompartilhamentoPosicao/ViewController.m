//
//  ViewController.m
//  DesafioCompartilhamentoPosicao
//
//  Created by Felipe Martins on 12/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando o nosso gerenciador de GPS
    self.gerenciadorGps = [[CLLocationManager alloc]init];
    
    // Setando a precisão de resgate
    self.gerenciadorGps.desiredAccuracy = kCLLocationAccuracyBest;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rastrearPosicao:(UIBarButtonItem *)sender {
    
    // Habilitando o mapa para mostrar a posição do usuário
    
    self.mapa.showsUserLocation = YES;
    
    // Ligando o delegate do nosso gerenciador de GPS
    
    self.gerenciadorGps.delegate = self;
    
    // Iniciando o resgate da posição
    [self.gerenciadorGps startUpdatingLocation];
    
}


#pragma mark - Métodos de CLLocationManagerDelegate


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{

    // Dando um log para verificar a posição em console
    NSLog(@"%@", [locations lastObject]);

    // Guardando a localização passada como parâmetro em nossa variável global
    self.posicao = [locations lastObject];
    
    // criando o zoom
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.01, 0.01);
    
    // Criando a região
    MKCoordinateRegion regiao = MKCoordinateRegionMake(self.posicao.coordinate, zoom);

    // Setando em nosso mapa
    
    [self.mapa setRegion:regiao animated:YES];
    
    
    // Craindo variáveis para armazenar a tatitude e longitude para posteriormente criarmos a frase.
    
    float latitude = self.posicao.coordinate.latitude;
    float longitude = self.posicao.coordinate.longitude;
    
    // Criando a frase que será enviada por e-mail
    
    self.frase = [NSString stringWithFormat:@"Estou na latitude: %f e na longitude: %f", latitude, longitude];
    
    // Colocando os valores na label
    
    self.labelPosicao.text = [NSString stringWithFormat:@"Lat: %f Long: %f", latitude, longitude];
    

}






- (IBAction)compartilharPosicao:(UIBarButtonItem *)sender {
    
    
    if ([MFMailComposeViewController canSendMail]) {
        
        // Criando o objeto da classe que gear a janela de composição de e-mail
        MFMailComposeViewController *emailCompose = [[MFMailComposeViewController alloc]init];
        // Colocando o título
        [emailCompose setSubject:@"Ei, estou Aqui!"];
        
        // Escrevendo o corpo do e-mail
        [emailCompose setMessageBody:self.frase isHTML:NO];
        
        // Criando o array de destinatários
        NSArray *listaEmail = @[@"melhoramigo@gmail.com", @"amigao@hotmail.com", @"defeh@hotmail.com"];
        
        // Definindo os destinatários
        [emailCompose setToRecipients:listaEmail];
        
        // ligando o delegate
        emailCompose.mailComposeDelegate = self;
        
        // Apresentando a janeja
        [self presentViewController:emailCompose animated:YES completion:nil];
        
        
    }
    
    
}


#pragma mark - Métodos de MFMailComposeViewControllerDelegate

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{


// Quando a operação form terminada a janela de e-mail é retirada
    
    [controller dismissViewControllerAnimated:YES completion:nil];



}


@end
