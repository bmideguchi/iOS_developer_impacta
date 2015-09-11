//
//  ViewController.h
//  DesafioCompartilhamentoPosicao
//
//  Created by Felipe Martins on 12/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate, MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapa;
@property (weak, nonatomic) IBOutlet UILabel *labelPosicao;
- (IBAction)rastrearPosicao:(UIBarButtonItem *)sender;
- (IBAction)compartilharPosicao:(UIBarButtonItem *)sender;


//
@property (nonatomic, strong) CLLocationManager *gerenciadorGps;

@property (nonatomic, strong) CLLocation *posicao;

@property (nonatomic, strong) NSString *frase;

//
@end
