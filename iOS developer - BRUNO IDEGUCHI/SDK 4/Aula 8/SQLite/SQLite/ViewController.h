//
//  ViewController.h
//  SQLite
//
//  Created by NoiteA on 28/08/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

//Importando o SQLite3
#import <sqlite3.h>

@interface ViewController : UIViewController{
    
    //iVar que representa o nosso banco de dados
    sqlite3 *meuBanco;
    
    //iVar que representa os comandos (query) - trabalhar em C (baixo nível)
    const char *comando;
    
}

//Criação dos outlets
@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldIdade;

//Criação dos actions
- (IBAction)buttonCadastrar:(UIButton *)sender;
- (IBAction)buttonResgatar:(UIButton *)sender;



@end
