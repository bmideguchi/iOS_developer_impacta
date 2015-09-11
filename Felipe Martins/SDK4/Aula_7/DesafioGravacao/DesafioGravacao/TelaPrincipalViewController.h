//
//  TelaPrincipalViewController.h
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importando o delegate da actionSheet
@interface TelaPrincipalViewController : UITableViewController <UIActionSheetDelegate>

// criando um array que receberá as gravações salvas
@property (nonatomic, strong) NSArray *arrayDadosGravacoes;

@end
