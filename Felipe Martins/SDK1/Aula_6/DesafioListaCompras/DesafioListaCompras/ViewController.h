//
//  ViewController.h
//  DesafioListaCompras
//
//  Created by Felipe Martins on 14/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem1;
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem2;
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem3;
@property (retain, nonatomic) IBOutlet UITextField *textFieldItem4;
@property (retain, nonatomic) IBOutlet UITextField *textFieldQuantidade;

//
- (IBAction)montarLista:(UIButton *)sender;

@end
