//
//  ViewController.h
//  DesafioMapKit
//
//  Created by Felipe Martins on 09/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapa;



- (IBAction)escolherTipoDoMapa:(UISegmentedControl *)sender;
- (IBAction)mudarSantaCruz:(UIBarButtonItem *)sender;
- (IBAction)mudarPaulista:(UIBarButtonItem *)sender;

@end
