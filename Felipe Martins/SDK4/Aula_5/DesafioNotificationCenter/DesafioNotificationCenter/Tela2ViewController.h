//
//  Tela2ViewController.h
//  DesafioNotificationCenter
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface Tela2ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTelefone;


//

@property (nonatomic, strong) CLLocationManager *gerenciadorGps;
@property (nonatomic, strong) CLLocation *coordenadas;


//


- (IBAction)rastrearPosicao:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelLatitude;
@property (weak, nonatomic) IBOutlet UILabel *labelLongitude;



@end
