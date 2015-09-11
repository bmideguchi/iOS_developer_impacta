//
//  ViewController.m
//  MapKit
//
//  Created by Felipe Martins on 09/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Las Vegas : 36.113471,-115.166931
    // Punta del Este : -34.966436,-54.948463
    
    
    // Criando a variável que armazena as coordenadas
    CLLocationCoordinate2D coordenadas = CLLocationCoordinate2DMake(36.113471, -115.166931);
    
    
    // Criando o tipo de dado que controla o zoom
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.05, 0.05);
    
    
    // Criando a região que será exibida no mapa
    // Obs: Uma região é exibida com base nas coordenadas e no zoom
    
    MKCoordinateRegion regiao = MKCoordinateRegionMake(coordenadas, zoom);
    
    
    // Método que seta uma região no mapa
    
    [self.mapa setRegion:regiao];
    
    
    // Criando um Pino no mapa
    
    MKPointAnnotation *pinoLasVegas = [[MKPointAnnotation alloc]init];
    MKPointAnnotation *pinoPuntaDelEste = [[MKPointAnnotation alloc]init];
    
    // Propriedade que define o título do pino
    pinoLasVegas.title = @"Las Vegas";
    pinoPuntaDelEste.title = @"Punta Del Este";
    
    // proprieade de define as coordenadas do pino
    pinoLasVegas.coordinate = coordenadas;
    pinoPuntaDelEste.coordinate = CLLocationCoordinate2DMake(-34.966436, -54.948463);
    
    // Método que adiciona o pino no mapa
    
    [self.mapa addAnnotation:pinoLasVegas];
    [self.mapa addAnnotation:pinoPuntaDelEste];
    
    
    
    // --------------------------- // ---------------------
    
    // Iniciando nosso gerenciador de GPS
    self.gerenciadorGps  = [[CLLocationManager alloc]init];
    
    // Settando a propriedate que define a intensidade de sua localização
    
    self.gerenciadorGps.desiredAccuracy = kCLLocationAccuracyBest;
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mudarMapa:(UISegmentedControl *)sender {
    
    
    // Resgatando o índice do segmented para verificar a opção escolhida pelo usuário
    
    int indice = sender.selectedSegmentIndex;
    
    // Alterando o visual do mapa
    // MapType - Propriedade que controla o tipo visual do mapa
    
    
    switch (indice) {
        case 0:
            self.mapa.mapType = MKMapTypeStandard;
            
            break;
        case 1:
            self.mapa.mapType = MKMapTypeSatellite;
            
            break;
        case 2:
            self.mapa.mapType = MKMapTypeHybrid;
            
            break;
        default:
            break;
    }
    
    
    
    
    
    
}

- (IBAction)localizar:(UIBarButtonItem *)sender {
    
    
    // Propriedade que liga o rastreamento do usuário no mapa
    self.mapa.showsUserLocation = YES;
    
    // Ligando o delegate do nosso gerenciador do gps
    self.gerenciadorGps.delegate = self;
    
    // Método que liga o resgate de valores da posição do dispositivo
    [self.gerenciadorGps startUpdatingLocation];
    
    
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{

    // Resgatando os valores passados em relação a última atualização
    NSLog(@"%@", [locations lastObject]);

    // Resgatando a posição atual do dispositivo
    CLLocation *localizacao = [locations lastObject];
    
    // Criando o nível de zoom
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.01, 0.01);
    
    // Criando uma região
    
    MKCoordinateRegion regiao = MKCoordinateRegionMake(localizacao.coordinate, zoom);

    // Setamos o mapa para exibir esta região
    
  //  [self.mapa setRegion:regiao];
    
    [self.mapa setRegion:regiao animated:YES];




}



@end
