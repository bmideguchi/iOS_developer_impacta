//
//  ViewController.m
//  mapkit
//
//  Created by NoiteA on 09/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Las Vegas
    //36.127338,-115.171738
    
    //Punta del Este
    //-34.963763,-54.94915
    
    //Type que guarda as coordenadas
    CLLocationCoordinate2D coordenadas = CLLocationCoordinate2DMake(36.127338, -115.171738);
    
    //Type que controla o zoom. Quanto menor o valor, mais perto.
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.05, 0.05);

    //Criando a regiao que será exibida no mapa
    //Obs: Uma região é exibida com base nas coordenadas e no zoom
    MKCoordinateRegion regiao = MKCoordinateRegionMake(coordenadas, zoom);
    
    //Método que seta uma região no mapa
    [self.mapa setRegion:regiao];
    
    //Criando um pino no mapa
    MKPointAnnotation *pinoLasVegas = [[MKPointAnnotation alloc]init];
    MKPointAnnotation *pinoPuntaDelEste = [[MKPointAnnotation alloc]init];
    
    //Propriedade que define o título do pino
    pinoLasVegas.title = @"Las Vegas";
    pinoPuntaDelEste.title = @"Punta Del Este";
    
    //Definindo as coordenadas do pino
    pinoLasVegas.coordinate = coordenadas;
    pinoPuntaDelEste.coordinate = CLLocationCoordinate2DMake(-34.963763,-54.94915);

    //Método que adiciona o pino no mapa
    [self.mapa addAnnotation:pinoLasVegas];
    [self.mapa addAnnotation:pinoPuntaDelEste];
    
    //-------
    //Iniciando nosso gerenciador de GPS
    self.gerenciadorGps = [[CLLocationManager alloc]init];
    
    //Setando a propriedade que define a intensidade de sua localização
    self.gerenciadorGps.desiredAccuracy = kCLLocationAccuracyBest;


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mudarMapa:(UISegmentedControl *)sender {
    
    //Resgatando o indice do segmented para verificar a opção escolhida pelo usuário
    int indice = sender.selectedSegmentIndex;
    
    //Alterando o visual do mapa
    //MapType - Propriedade que controla o tipo visual do mapa
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
    
    //Propriedade que liga o rastreamento do usuário no mapa
    self.mapa.showsUserLocation = YES;
    
    //Ligando o delegate do nosso gerenciador do gps
    self.gerenciadorGps.delegate = self;
    
    //Método que liga o resgate de valores da posição do dispositivo
    [self.gerenciadorGps startUpdatingLocation];
}



#pragma mark - Métodos de LocationManager

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
    //Resgatando valores passados em relação a última atualização
    NSLog(@"%@", [locations lastObject]);
    
    //Resgatando a posição atual do dispositivo
    CLLocation *localizacao = [locations lastObject];
    
    //Criamos o nível de zoom
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.01, 0.01);
    
    //Criando uma região
    MKCoordinateRegion regiao = MKCoordinateRegionMake(localizacao.coordinate, zoom);
    
    //Setamos o mapa para exibir essa região
    
    [self.mapa setRegion:regiao animated:YES];
    
}

@end
