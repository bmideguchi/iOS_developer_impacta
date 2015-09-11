//
//  ViewController.m
//  DesafioMapKit
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)escolherTipoDoMapa:(UISegmentedControl *)sender {
    
    
    int indice = sender.selectedSegmentIndex;
    
    switch (indice) {
        case 0:
            self.mapa.mapType = MKMapTypeStandard;
            break;
            
        case 1:
            self.mapa.mapType = MKMapTypeSatellite;
            
            break;
        default:
            break;
    }
    
    
    
}

- (IBAction)mudarSantaCruz:(UIBarButtonItem *)sender {
    
    
    
    // FIT : -23.603421, -46.637892
    
    
    CLLocationCoordinate2D coordenadas = CLLocationCoordinate2DMake(-23.603421, -46.637892);
    
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.001, 0.001);
    
    MKCoordinateRegion regiao = MKCoordinateRegionMake(coordenadas, zoom);
    
    
    MKPointAnnotation *pinoUnidadeSantaCruz = [[MKPointAnnotation alloc]init];
    
    pinoUnidadeSantaCruz.title = @"IMPACTA Unidade Santa Cruz";
    pinoUnidadeSantaCruz.coordinate = coordenadas;
    
    [self.mapa addAnnotation:pinoUnidadeSantaCruz];
    
    [self.mapa setRegion:regiao animated:YES];
    
    
}

- (IBAction)mudarPaulista:(UIBarButtonItem *)sender {
    
    // IMPACTA Paulista -23.565108, -46.652158
    
    CLLocationCoordinate2D coordenadas = CLLocationCoordinate2DMake(-23.565108, -46.652158);
    
    MKCoordinateSpan zoom = MKCoordinateSpanMake(0.001, 0.001);
    
    MKCoordinateRegion regiao = MKCoordinateRegionMake(coordenadas, zoom);
    
    
    MKPointAnnotation *pinoUnidadePaulista = [[MKPointAnnotation alloc]init];
    
    pinoUnidadePaulista.title = @"IMPACTA Unidade Paulista";
    
    pinoUnidadePaulista.coordinate = coordenadas;
    
    [self.mapa addAnnotation:pinoUnidadePaulista];
    
    [self.mapa setRegion:regiao animated:YES];
    
    
    
    
    
}
@end
