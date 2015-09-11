//
//  ViewController.h
//  DesafioConversorRealDolar
//
//  Created by Felipe Martins on 07/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


// Criando as propriedades (Outlets) para nossas labels
@property (retain, nonatomic) IBOutlet UILabel *labelReal;
@property (retain, nonatomic) IBOutlet UILabel *labelDolar;
@property (retain, nonatomic) IBOutlet UISlider *sliderConversor;

// Criando a Action que será disparada por nosso slider
- (IBAction)converterMoeda:(UISlider *)sender;


@end
