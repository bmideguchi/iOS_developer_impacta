//
//  ViewController.h
//  aula9Desafio1
//
//  Created by NoiteA on 15/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewUnico;
@property (weak, nonatomic) IBOutlet UILabel *labelExibeSegundos;
@property (weak, nonatomic) IBOutlet UIButton *buttonIniciar;



- (IBAction)buttonIniciarComecarContagem:(UIButton *)sender;

@end
