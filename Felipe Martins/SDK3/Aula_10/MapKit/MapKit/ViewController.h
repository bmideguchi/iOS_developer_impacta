//
//  ViewController.h
//  MapKit
//
//  Created by Felipe Martins on 09/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

// Importando o delegate do CLLocationManagerDelegate
@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapa;

- (IBAction)mudarMapa:(UISegmentedControl *)sender;


//

// Criando um gerenciador do GPS
@property (nonatomic, strong) CLLocationManager *gerenciadorGps;

- (IBAction)localizar:(UIBarButtonItem *)sender;

@end
