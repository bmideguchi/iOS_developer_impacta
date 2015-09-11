//
//  ViewController.h
//  DesafioNotificationCenter
//
//  Created by Felipe Martins on 21/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTelefone;
@property (weak, nonatomic) IBOutlet MKMapView *mapa;


//

-(void)metodoDisparadoPelaNotificacao:(NSNotification *)notificacao;

//

@end
