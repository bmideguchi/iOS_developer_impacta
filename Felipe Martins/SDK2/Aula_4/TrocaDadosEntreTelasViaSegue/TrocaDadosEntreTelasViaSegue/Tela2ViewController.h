//
//  Tela2ViewController.h
//  TrocaDadosEntreTelasViaSegue
//
//  Created by Felipe Martins on 03/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tela2ViewController : UIViewController

// Variáveis que serão referenciadas na outra tela
@property (nonatomic, strong) NSString *nomePrimeiraTela;
@property (nonatomic, strong) NSString *sobrenomePrimeiraTela;

@property (weak, nonatomic) IBOutlet UILabel *labelDados;

@end
