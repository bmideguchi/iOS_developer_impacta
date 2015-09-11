//
//  Tela2ViewController.h
//  DesafioJSON
//
//  Created by Felipe Martins on 30/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tela2ViewController : UIViewController


//

@property (nonatomic, strong) NSDictionary *dicionarioPessoa;

//


@property (weak, nonatomic) IBOutlet UILabel *labelFieldNome;
@property (weak, nonatomic) IBOutlet UILabel *labelIdade;
@property (weak, nonatomic) IBOutlet UILabel *labelAltura;
@property (weak, nonatomic) IBOutlet UILabel *labelSolteiro;

@end
