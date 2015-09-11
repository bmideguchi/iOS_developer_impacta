//
//  ViewController.m
//  DesafioNotificationCenter
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.mapa.showsUserLocation = YES;
    
    self.textFieldNome.enabled = NO;
    self.textFieldSobrenome.enabled = NO;
    self.textFieldTelefone.enabled = NO;
    
    
    // Adicionando o observer da notificação que criamos na outra tela
    NSNotificationCenter *centroNotificacao = [NSNotificationCenter defaultCenter];
    
    [centroNotificacao addObserver:self selector:@selector(metodoDisparadoPelaNotificacao:) name:@"NOTIFICACAO" object:nil];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)metodoDisparadoPelaNotificacao:(NSNotification *)notificacao{

    
    // Criando um dicionario para receber o dicionario enviado pela notificação
    
    NSDictionary *dadosRecebidos = notificacao.userInfo;
    
    // Configurando as textFields
    self.textFieldNome.text = [dadosRecebidos objectForKey:@"nome"];
    self.textFieldSobrenome.text = [dadosRecebidos objectForKey:@"sobrenome"];
    self.textFieldTelefone.text = [dadosRecebidos objectForKey:@"telefone"];
    
    
            // setando as coordenadas no mapa
    
    CLLocation *coordenadasRecuperada = [dadosRecebidos objectForKey:@"posicao"];
    
    
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.01, 0.01);
    
    CLLocationCoordinate2D coordenadas2D = coordenadasRecuperada.coordinate;
    
    MKCoordinateRegion regiao = MKCoordinateRegionMake(coordenadas2D, zoom);
    
    [self.mapa setRegion:regiao animated:YES];
    
    
    

    NSLog(@"Funfou!!!!");


}

@end
