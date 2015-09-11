//
//  ViewController.h
//  SQLite
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>

// Importando o sqlite
#import <sqlite3.h>

@interface ViewController : UIViewController{

    // iVar que representa o nosso banco de dados
    sqlite3 *meuBanco;

    // iVar que representa os comandos (conhecidos como query)
    const char *comando;
    
}


// Criação dos Outlets e Actions
@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldIdade;
- (IBAction)cadastrar:(UIButton *)sender;

- (IBAction)resgatar:(UIButton *)sender;
@end
