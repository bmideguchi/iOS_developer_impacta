//
//  ViewController.h
//  DesafioLanterna
//
//  Created by Felipe Martins on 12/06/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)ligarLanterna:(UIButton *)sender;

// Um tipo booleano nos retorno um valor Verdadeiro ou Falso
@property (nonatomic, assign) BOOL isOn;
@property (retain, nonatomic) IBOutlet UIButton *botaoLanterna;

@end
