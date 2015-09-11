//
//  ViewController.h
//  desafioListaCompras
//
//  Created by NoiteA on 14/06/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextField *textFieldItem1;
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem2;
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem3;
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem4;
@property (retain, nonatomic) IBOutlet UITextField *textFieldResultado;

- (IBAction)buttonMostrarResultado:(UIButton *)sender;



@end
