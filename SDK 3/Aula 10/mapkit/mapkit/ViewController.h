//
//  ViewController.h
//  mapkit
//
//  Created by NoiteA on 09/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

//Importando o delegate do CLLocationManagerDelegate
@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapa;

- (IBAction)mudarMapa:(UISegmentedControl *)sender;

//////////////////////////////////////////////////////////////////////////

@property (nonatomic, strong) CLLocationManager *gerenciadorGps;

- (IBAction)localizar:(UIBarButtonItem *)sender;


@end
